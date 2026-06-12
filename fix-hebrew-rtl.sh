#!/usr/bin/env bash
#
# fix-hebrew-rtl.sh — fix reversed Hebrew/Arabic text in the Claude Code panel
#
# WHAT THIS FIXES
#   Old versions of the Claude Code extension for VS Code / Cursor had a CSS
#   bug that forced all panel text left-to-right, so Hebrew and Arabic came
#   out reversed. (github.com/anthropics/claude-code/issues/30732)
#   Current extension versions are already fixed — updating the extension is
#   the best fix. Run this script only if you cannot update.
#
# WHAT IT DOES
#   1. Finds every installed Claude Code extension (VS Code, VS Code Insiders, Cursor).
#   2. Checks each one's webview/index.css for the buggy rule (unicode-bidi:bidi-override).
#   3. If found: saves a backup (index.css.bak) and replaces it with unicode-bidi:normal.
#   4. If not found: tells you your version is already fine.
#
# HOW TO RUN
#   bash fix-hebrew-rtl.sh
#   ...then fully quit and reopen VS Code / Cursor.
#
# NOTES
#   - The extension overwrites this file when it updates, so if Hebrew breaks
#     again after an update, just run the script again.
#   - To undo: restore the .bak file the script created next to index.css.
#   - Advanced: pass one or more extension folders as arguments to scan those
#     instead of the default locations.

set -u

PATCHED=0
CLEAN=0
CHECKED=0

check_and_patch() {
  local css="$1"
  CHECKED=$((CHECKED + 1))
  local shortname
  shortname="$(basename "$(dirname "$(dirname "$css")")")"

  if grep -qE 'unicode-bidi: ?bidi-override' "$css"; then
    cp "$css" "$css.bak" || { echo "  ❌ $shortname — could not create backup, skipping (no changes made)"; return; }
    sed -E 's/unicode-bidi: ?bidi-override/unicode-bidi:normal/g' "$css" > "$css.tmp" \
      && mv "$css.tmp" "$css" \
      || { echo "  ❌ $shortname — patch failed, original file untouched"; rm -f "$css.tmp"; return; }
    if grep -qE 'unicode-bidi: ?bidi-override' "$css"; then
      echo "  ❌ $shortname — patch did not take, restoring backup"
      mv "$css.bak" "$css"
    else
      echo "  🔧 $shortname — PATCHED (backup saved as index.css.bak)"
      PATCHED=$((PATCHED + 1))
    fi
  else
    echo "  ✅ $shortname — already fine (no buggy rule found)"
    CLEAN=$((CLEAN + 1))
  fi
}

# Build the list of extension folders to scan.
DIRS=()
if [ "$#" -gt 0 ]; then
  for d in "$@"; do DIRS+=("$d"); done
else
  for root in "$HOME/.vscode/extensions" "$HOME/.vscode-insiders/extensions" "$HOME/.cursor/extensions"; do
    [ -d "$root" ] || continue
    for d in "$root"/anthropic.claude-code-*; do
      [ -d "$d" ] && DIRS+=("$d")
    done
  done
fi

if [ "${#DIRS[@]}" -eq 0 ]; then
  echo "No Claude Code extension found in ~/.vscode, ~/.vscode-insiders, or ~/.cursor."
  echo "Is the Claude Code extension installed? (In VS Code: Extensions view → search \"Claude Code\".)"
  exit 1
fi

echo "Scanning ${#DIRS[@]} Claude Code extension install(s)..."
echo

for d in "${DIRS[@]}"; do
  css="$d/webview/index.css"
  if [ -f "$css" ]; then
    check_and_patch "$css"
  else
    echo "  ⚠️  $(basename "$d") — no webview/index.css here, skipping"
  fi
done

echo
if [ "$PATCHED" -gt 0 ]; then
  echo "Done — patched $PATCHED install(s)."
  echo
  echo "➡️  NOW: fully QUIT VS Code / Cursor (not just close the window) and reopen it."
  echo "   Hebrew should display correctly in the Claude panel."
  echo
  echo "⚠️  Remember: an extension update overwrites this fix. If Hebrew reverses"
  echo "   again after an update, run this script again."
elif [ "$CLEAN" -gt 0 ]; then
  echo "Good news — your extension is already fixed. No patch was needed."
  echo
  echo "If Hebrew still looks wrong:"
  echo "  • Make sure you're typing in the CLAUDE PANEL (the Claude logo in the"
  echo "    sidebar), not the terminal — the terminal can't display Hebrew at all."
  echo "  • Letters fine but MIXED Hebrew+English sentences in the wrong order?"
  echo "    That's a different issue this script doesn't cover: install the"
  echo "    'Claude Code RTL Support' extension (yechielby.claude-code-rtl) from"
  echo "    the Extensions view and click its ⇄ button. See hebrew-rtl-fix.md."
  echo "  • Always-works backup: keep Hebrew in a .md file and point Claude at it"
  echo "    with @ — the editor displays Hebrew perfectly."
else
  echo "Nothing was checked — see the warnings above."
  exit 1
fi

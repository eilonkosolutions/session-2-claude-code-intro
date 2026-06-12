# 🔤 Hebrew Comes Out Wrong? — The Full Fix Guide

*Hebrew (or Arabic) text showing up reversed, scrambled, or in the wrong order when you work with Claude Code? It's not you, and it's not Claude. This guide gets you to readable Hebrew in under five minutes — find your symptom below, apply its fix, done.*

> 🧪 **Want a fast before/after check?** This repo includes a ready-made test — **[rtl-test.md](rtl-test.md)**. Ask Claude to print its test battery and compare against the expected results. Run it once before fixing anything and once after.

**One thing to know up front:** every fix here is for the **Claude panel** (the chat from the Claude logo in the sidebar). The VS Code *terminal* cannot be fixed — its rendering engine has had no right-to-left support [since the request was opened in 2017](https://github.com/xtermjs/xterm.js/issues/701). The terminal answer is: don't use it for Hebrew. *(One partial exception for curious Mac users — see the appendix at the bottom.)*

---

## First, know which problem you have

Hebrew can break in **three different ways**, with three different causes:

| What you see | Where | Why | The fix |
|---|---|---|---|
| Hebrew reversed **in the terminal** (where you type `claude`) | Terminal | VS Code's terminal simply can't display right-to-left text. Apple's built-in Terminal has the same limitation. | Use the **Claude panel** → Step 1 |
| Letters literally backwards **in the Claude panel** — שלום shows as םולש | Panel | A bug in *old versions* of the Claude Code extension. Long since fixed. | **Update the extension** → Step 2 |
| Letters fine, but **mixed Hebrew + English sentences come out in the wrong order** — segments shuffled, the period at the wrong end | Panel | The panel lays out every line left-to-right; Hebrew-dominant sentences with English words get scrambled at the *segment* level. Not yet fixed in the official extension. | **Install the RTL Support add-on + click ⇄** → Step 3 |

---

## Step 1 — Use the Claude panel, not the terminal

Click the **Claude logo** in VS Code's left sidebar. That opens the same agent in a chat panel — and the panel handles Hebrew far better than the terminal ever will.

- **Don't see the logo?** Run `claude` in the terminal once — that usually installs the panel. Otherwise open the Extensions view (`Ctrl/Cmd+Shift+X`), search **"Claude Code"**, and install it.
- Everything from class works the same in the panel — `/init`, building, skills — with nicer buttons.

✅ **Hebrew reads correctly in the panel? You're done.** Use the panel whenever you work in Hebrew.

---

## Step 2 — Letters literally backwards in the panel? Update the extension

If שלום displays as **םולש** *inside the panel*, you're on an old extension version (roughly v2.1.68 and earlier) with a long-fixed bug:

1. Open the Extensions view (`Ctrl/Cmd+Shift+X`).
2. Find **Claude Code** → if there's an **Update** button, click it.
3. Reload when prompted — or fully quit and reopen VS Code.

**Stuck on an old version you can't update** (locked-down work laptop, IT policy)? Run the patch script in this repo:

```
bash fix-hebrew-rtl.sh
```

It finds every installed Claude Code extension, checks for the buggy style rule (`unicode-bidi:bidi-override` — documented in [issue #30732](https://github.com/anthropics/claude-code/issues/30732)), and if found, backs the file up and fixes that one rule. If your version is already fine it tells you so and touches nothing. *(On Windows, run it from **Git Bash** — you have it from the Session 2 Git install.)* Two things to know: an extension update overwrites the patch (re-run if needed — though the update itself probably fixed it properly), and to undo, restore the `index.css.bak` the script saved.

<details>
<summary>Prefer to do it by hand? The manual version</summary>

1. **Fully quit** VS Code / Cursor.
2. Find the extension's style file:
   - **VS Code (Mac/Linux):** `~/.vscode/extensions/anthropic.claude-code-<version>/webview/index.css`
   - **VS Code (Windows):** `C:\Users\<you>\.vscode\extensions\anthropic.claude-code-<version>\webview\index.css`
   - **Cursor:** same, under `.cursor\extensions\` instead of `.vscode\extensions\`
3. Open `index.css` in any text editor, search for `unicode-bidi:bidi-override`, and replace `bidi-override` with `normal`. (Not found → your version doesn't have this bug.)
4. Save and reopen VS Code / Cursor.

</details>

---

## Step 3 — Mixed Hebrew + English sentences scrambled? Install the RTL add-on

This is the one **updating does NOT fix** — even the newest Claude Code extension lays paragraphs out left-to-right, so a Hebrew sentence with English words in it (and most real sentences mention *Claude Code*, a filename, or an English term) displays its parts in the wrong order.

The fix is a small free add-on extension that teaches the panel right-to-left layout:

1. Open the Extensions view (`Ctrl/Cmd+Shift+X`).
2. Search **"Claude Code RTL"** → install **Claude Code RTL Support** (by *yechielby*).
3. Reload when prompted. A **⇄ button** appears at the top of the Claude chat panel.
4. **Click ⇄ to switch the chat to RTL mode.** Hebrew-dominant text now aligns right and reads in the correct order; click again to switch back for English-heavy work.

Good to know:

- It's **open-source (MIT)** and display-only — it adjusts how text is *laid out*, keeps code blocks left-to-right, and doesn't touch your content. Source: [github.com/yechielby/claude-code-rtl-extension](https://github.com/yechielby/claude-code-rtl-extension).
- Because it's a separate extension, it **survives Claude Code updates** — install once and forget it.
- Works in VS Code and Cursor.

✅ **Worked if:** mixed sentences like "אנחנו משתמשים ב-Claude Code כדי לבנות את האתר." read naturally, with the period at the end.

---

## The backup move that always works

Whatever state your tools are in, this works everywhere, today:

> **Keep Hebrew in files, not in the chat box.** Write your Hebrew content in a `.md` file — the *editor* displays Hebrew perfectly — then point Claude at it: *"use the text in `@about-he.md`"*. And when you want Hebrew **output**, ask Claude to *write it into a file* instead of printing it, then read it in the editor.

This is good practice anyway: content in files is content Claude can re-read in every future session.

---

## Appendix — is the *terminal* really hopeless?

Almost. Claude Code's command-line interface has no Hebrew setting of its own — it just prints text, and the terminal app decides how to draw it. So it comes down to which terminal you run `claude` in:

- **VS Code terminal / Apple Terminal / Windows Terminal:** no right-to-left support, nothing to configure.
- **iTerm2 on Mac (free), version 3.6+:** has an *experimental* RTL mode — *Settings → General → Experimental → "Enable support for right-to-left scripts."* Pure Hebrew reads decently; **mixed Hebrew/English still struggles** — which is exactly the hard case — so the panel + ⇄ remains the better setup. If you try it, verify with [rtl-test.md](rtl-test.md).

For everyone else: the panel isn't a workaround, it's the same Claude Code with a display that handles Hebrew. Use it.

---

## Quick reference

| Symptom | Fix |
|---|---|
| Hebrew reversed **in the terminal** | Don't fight it — use the **Claude panel** (Step 1) or keep Hebrew in files + `@` |
| Letters backwards **in the panel** (שלום → םולש) | **Update the extension** (Step 2); can't update → `fix-hebrew-rtl.sh` |
| **Mixed Hebrew/English in the wrong order** in the panel | Install **Claude Code RTL Support** + click **⇄** (Step 3) |
| Reversed again **after an extension update** | The ⇄ add-on survives updates; only the Step-2 script needs re-running |
| Want zero fuss | Hebrew in `.md` files, point with `@`, ask for output in files |

*One caution: prefer the marketplace **extension** (Step 3) over script-based patchers that edit Claude Code's files directly — file patches are wiped by every update. The one exception is this repo's `fix-hebrew-rtl.sh` for the old letter-reversal bug on machines that can't update at all.*

# 🔤 RTL Quick Test — בדיקת עברית ב-60 שניות

*A ready-made test to check how Hebrew renders in your setup. Use it after installing the RTL Support add-on (see [hebrew-rtl-fix.md](hebrew-rtl-fix.md)) — or any time something looks off.*

## How to run the test

1. Open the **Claude panel** (the Claude logo in VS Code's sidebar).
2. Send Claude this exact prompt:

> *"Read `@rtl-test.md` and print the entire 'TEST BATTERY' section back to me exactly as written — as normal text, NOT inside a code block."*

3. Compare what Claude prints against the **expected results** at the bottom.

*(Why "not in a code block"? Code blocks are deliberately left-to-right everywhere — Hebrew inside one always looks odd, and that's by design, not a bug.)*

---

## TEST BATTERY

**1. Anchor word:** שלום

**2. Pure Hebrew:** אם אתה מצליח לקרוא את המשפט הזה בקלות ובכיוון הנכון, התצוגה של עברית רגילה תקינה.

**3. Mixed sentences (the hard cases):**
- אנחנו משתמשים ב-Claude Code כדי לבנות את האתר.
- פתחתי את הקובץ index.html בתיקייה הראשית של הפרויקט.
- המספרים 1, 2 ו-3 מופיעים בתוך משפט עברי, plus English at the end.
- באמצע השורה יש English (like this) ועם סוגריים מסביב.

**4. Numbers and dates:** המפגש ב-19 ביוני 2026, בשעה 18:30. העלות: 250 ש"ח.

**5. Mini table:**

| מושג | הסבר | English term |
|---|---|---|
| לולאת הסוכן | המודל קורא, פועל, בודק וחוזר | Agent loop |
| זיכרון | קובץ CLAUDE.md שאתם יכולים לערוך | Memory / CLAUDE.md |

---

## Expected results

| What you see in Claude's reply | Verdict |
|---|---|
| **שלום** looks like **שלום**, and the mixed sentences in #3 read naturally — each line starts on the right, the English sits inside the flow, and the period lands at the **end** of the sentence | ✅ **All good.** You're done. |
| Letters fine, but the #3 sentences come out **in the wrong order** — segments shuffled, the period at the wrong end | ❌ Mixed-direction layout is off → install **Claude Code RTL Support** and click its **⇄** button ([guide, Step 3](hebrew-rtl-fix.md)) |
| **שלום** shows as **םולש** (letters literally backwards) | ❌ Old extension bug → **update the Claude Code extension** ([guide, Step 2](hebrew-rtl-fix.md)) |

**Bonus — see why we avoid the terminal:** run `claude` in the VS Code *terminal* and send the same prompt. The Hebrew will come out broken no matter what — the terminal has no right-to-left support at all (an [open issue since 2017](https://github.com/xtermjs/xterm.js/issues/701)), which is exactly why the fix is "use the panel", not "fix the terminal".

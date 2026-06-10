# AI Bootcamp — Session 2: Your First Build

Welcome 👋 This is your workspace for **Session 2 — Your First Build (From Chatting to Directing).**

By the end you'll have gone from *chatting* with AI to *directing* it: Claude Code running on your laptop, a real one-page website you built by describing it, a design *skill* installed, and Claude connected to your own calendar.

> You won't write any code. You describe an *outcome*, give the agent context, and check the result. **That's directing.**

---

## ✅ Before the session — set up once (~20 minutes)

**Do this at home, not in the room.** Installs over shared Wi-Fi are slow, and you'll want to arrive ready to build. Every step below has a fallback, and we'll run a short setup clinic at the start — so if something won't budge, don't stress.

### Accounts you'll need

- **A *paid* Claude plan** — Pro, Max, or a Console (API) account. ⚠️ The **free** Claude.ai plan can chat, but it **cannot run Claude Code**, which is the tool this whole session is built on. Check at [claude.ai](https://claude.ai) → your initials → **Settings → Billing**.
- **A Google account, signed into your browser** (Gmail / Calendar). We use it near the end for the "connect an app" part.
- **No GitHub account needed.** You're only *downloading* a public folder — no signup, no login, nothing to connect.

### What you'll install (5 steps)

VS Code → Claude Code → Git → grab this folder → sign into Google. Here's each, step by step.

---

### Step 1 — Install VS Code

VS Code is a free editor from Microsoft. It's the window you'll work in.

<details>
<summary><b>🍎 On a Mac</b></summary>

1. Go to **https://code.visualstudio.com** and click the big blue **Download** button.
2. Open the downloaded `.zip`, then drag **Visual Studio Code** into your **Applications** folder.
3. Open it from Applications. If macOS warns it's from the internet, click **Open**.

</details>

<details>
<summary><b>🪟 On Windows</b></summary>

1. Go to **https://code.visualstudio.com** and click **Download for Windows**.
2. Run the downloaded installer. Click **Next** through every screen — the defaults are correct.
3. Launch **Visual Studio Code** from the Start menu.

</details>

✅ **Worked if:** VS Code opens to a "Welcome" tab.

---

### Step 2 — Install Claude Code & sign in

Claude Code is the AI agent that works *inside* your files. You install it from VS Code's built-in terminal.

**First, open the terminal:** in VS Code's top menu, click **Terminal → New Terminal**. A panel opens at the bottom — that's where you type the commands below.

<details>
<summary><b>🍎 On a Mac</b></summary>

Paste this into the terminal and press **Enter**:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Wait for it to finish (~1 minute), then **close and reopen** the terminal.

</details>

<details>
<summary><b>🪟 On Windows</b></summary>

VS Code's terminal opens **PowerShell** (your prompt starts with `PS C:\...`). Paste this and press **Enter**:

```powershell
irm https://claude.ai/install.ps1 | iex
```

Wait for it to finish. **Then fully quit and reopen VS Code** (use **File → Exit**, then relaunch) — *not* just the terminal panel. On Windows, VS Code only notices a newly installed tool after a full restart.

> See a yellow warning that `.local\bin` **"is not in your PATH"**? Do the **[Windows: `claude` not recognized after install](#windows-claude-not-recognized-after-install)** fix below *first*, then restart VS Code.

</details>

**Confirm it installed** — type this and press Enter:

```bash
claude --version
```

You should see a version number. (If it says "command not found", see [Stuck?](#-stuck-quick-fixes) below.)

**Sign in:** type `claude` and press Enter. It opens your browser to log in — use your **paid** Claude account. Once it says you're connected, you're set. Type `/exit` to leave for now.

✅ **Worked if:** `claude --version` prints a number, and `claude` logged you in without an error.

---

### Step 3 — Install Git (so you can grab this folder)

Git is the tool that downloads this folder. Again — **no GitHub account needed**; git just fetches public files.

<details>
<summary><b>🍎 On a Mac</b></summary>

In the terminal, type:

```bash
git --version
```

- If it prints a version (e.g. `git version 2.39`), you already have it ✅ — skip to Step 4.
- If a popup appears offering to install **"command line developer tools"**, click **Install** and wait. Then run `git --version` again to confirm.

</details>

<details>
<summary><b>🪟 On Windows</b></summary>

1. Go to **https://git-scm.com/downloads/win** — the download starts automatically.
2. Run the installer. You can click **Next** through every screen; the defaults are fine.
3. **Close and reopen VS Code** so it notices git.
4. In the terminal, type `git --version` — you should see a version number.

*(Bonus: this also makes Claude Code a little smarter on Windows — it's the recommended setup.)*

</details>

✅ **Worked if:** `git --version` prints a version number.

---

### Step 4 — Get this folder onto your computer

In the VS Code terminal, run these two lines **one at a time** (press Enter after each):

```bash
git clone https://github.com/eilonkosolutions/session-2-claude-code-intro.git
cd session-2-claude-code-intro
```

The first line downloads the folder; the second steps into it.

Then open it as your workspace: **File → Open Folder…** → choose **session-2-claude-code-intro** → **Open**.

<details>
<summary><b>🆘 No terminal, or git won't cooperate? Download the ZIP instead</b></summary>

1. Go to **https://github.com/eilonkosolutions/session-2-claude-code-intro**
2. Click the green **Code** button → **Download ZIP**.
3. Unzip it (double-click on Mac; right-click → **Extract All** on Windows).
4. In VS Code: **File → Open Folder…** → choose the unzipped folder.

You'll miss the "clone" practice, but you'll have every file — and that's what matters.

</details>

✅ **Worked if:** VS Code's file list (left side) shows `README.md` and `challenges.md`.

---

### Step 5 — Sign into Google in your browser

Near the end we'll connect Claude to your calendar. Just make sure you're **logged into your Google account** (Gmail or Calendar) in your normal browser. Nothing to install.

✅ **Worked if:** opening [calendar.google.com](https://calendar.google.com) shows *your* calendar.

---

## ✅ Final checklist — you're ready if…

- [ ] VS Code opens
- [ ] `claude --version` shows a number, and `claude` signed in with your **paid** plan
- [ ] `git --version` shows a number
- [ ] VS Code shows this folder's files (`README.md` + `challenges.md`)
- [ ] You're signed into Google in your browser

All five ticked? You're set. **Also bring one real task from your work** you'd like to hand off — a chore, a messy folder to make sense of, or something you'd like to build.

---

## That's all the prep 🎉

You're fully set up — **there's nothing to build yet.** We'll do all the hands-on together in the session, step by step. Just arrive with your five checks ticked and one real task in mind.

---

## 🆘 Stuck? Quick fixes

| Problem | Fix |
|---|---|
| `claude: command not found` / `not recognized` (Windows) | The installer couldn't add itself to PATH. See **[Windows: `claude` not recognized after install](#windows-claude-not-recognized-after-install)** just below. |
| `claude: command not found` (Mac) | Close and reopen the terminal. Still failing? Run the install command again, then `claude doctor`. |
| `git: command not found` (Windows) | Close and reopen VS Code after installing Git, so it picks it up. |
| `'irm' is not recognized…` (Windows) | You're in CMD, not PowerShell. Your prompt should start with `PS`. Open a fresh terminal (VS Code defaults to PowerShell). |
| `claude` won't log in / "no access" | Make sure you're on a **paid** plan (Pro/Max/Console). The free plan can't run Claude Code. |
| Mac: *"can't be opened, unidentified developer"* | Right-click the app → **Open** → **Open** again. |
| Hebrew shows up **reversed** in the terminal | VS Code's terminal can't display right-to-left text. Use the **Claude panel** instead (Claude logo in the left sidebar) — Hebrew works fine there. Full tip: **challenges.md → Working in Hebrew**. |
| Totally stuck | No stress — bring it to the start-of-session setup clinic, or follow **Act 1** in **[Claude.ai](https://claude.ai)** in your browser. |

Never used a terminal before? This short official guide helps: **https://code.claude.com/docs/en/terminal-guide**

### Windows: `claude` not recognized after install

If installing printed *"`.local\bin` is not in your PATH"*, or `claude --version` says **"not recognized"**, Windows just can't find the tool yet (it installed fine). Two steps fix it for good:

**1. Add Claude to your PATH.** Paste this whole block into PowerShell (it only touches *your* user settings and won't add a duplicate):

```powershell
$bin = "$env:USERPROFILE\.local\bin"
$userPath = [Environment]::GetEnvironmentVariable("Path","User")
if ($userPath -notlike "*$bin*") {
  [Environment]::SetEnvironmentVariable("Path", "$userPath;$bin", "User")
}
```

**2. Fully quit and reopen VS Code** (**File → Exit**, then relaunch — *not* just the terminal panel). Then open a new terminal and run `claude --version`. ✅

> Why the restart? VS Code reads your PATH once, when it launches — so it won't see the change until the whole app restarts. Quick proof: a **standalone PowerShell** (Start menu → "PowerShell") will find `claude` right after step 1, even before you restart VS Code.

---

## Keep this folder

You'll keep building in this same folder across **Sessions 3–5** — today's website becomes the project we keep improving. Don't delete it after the session.

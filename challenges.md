# Session 2 — Challenges: Your First Build

*We'll do these together through the back half of the session, in two acts. **Act 1 — Directing:** get the agent running on the material you brought, and build something real. **Act 2 — Supercharging:** install someone else's design expertise into your agent and watch your site level up in a single command.*

> 🌱 **Keep your project folder.** Next session we hand this same site two more powers — *eyes* (a real browser the agent drives to debug it) and a *live URL* on the public internet. We pick up right where we stop today.

---

## Challenge 1 — Take the Wheel (~12 min)

**Goal:** Point Claude Code at the folder you prepared, watch it read *your* material, and give it a memory for the project.

*You brought a folder with a bit of raw material about your business — notes, an old doc, a few bullet points, whatever you had. That's the meat. Everything we build today grows out of it.*

**Step 1 — Open your project.**
Open that folder in VS Code (File → Open Folder). Open the built-in terminal (Terminal → New Terminal). Type `claude` and press enter. Log in if it asks.

> The terminal is just a text way to talk to your computer. You're not becoming a programmer — you're becoming someone who can *direct* one.

**Step 2 — Your first direction.**
Type this into Claude Code:

> *"Read the files in this folder and tell me, in three bullets, what my business does and who it's for."*

It will ask permission to read. Say yes. Watch it answer from **your** material — not the internet.

**Step 3 — Give it a memory.**
Run `/init`. Claude reads everything in the folder and writes a **CLAUDE.md** — its memory for this project. Open it and read what it learned about your business. *This is the foundation your website gets built from.*

> **Stuck installing?** Switch to **Claude.ai** in your browser with file upload — paste your notes in and you'll do every exercise below there.

---

## Challenge 2 — First Build: Your Website (~18 min)

**Goal:** Direct Claude Code to turn your raw material into a real, multi-section website — then open it and check the work. *(Keep this folder — we grow it across Sessions 3–5.)*

This isn't a throwaway "hello world" page. You're building the actual front door for your business — a site you'd be happy to send someone. Give the agent a proper brief. Copy the template below, **fill in the `[ ]` gaps**, and paste the whole thing in:

```
Build a polished, modern website for my business using what's in this folder.

About the business:
  - Name:            [ your business name ]
  - What we do:      [ one clear sentence ]
  - Who we help:     [ your customer / audience ]
  - What's different: [ 1–2 things that set you apart ]

Put these sections on the page, in this order:
  - Hero      → big headline, one-line subhead, and a clear call-to-action button
  - About     → 2–3 short paragraphs, written in a warm, human voice
  - Offerings → 3 services or products, each a title + one line
  - Why us    → 3 short reasons to choose us
  - Contact   → [ email / phone / a simple contact form ]

Style: modern, warm, and trustworthy — clean typography, generous spacing,
and it must look great on a phone as well as a laptop.

Pull real details from my files wherever you can. If something's missing,
ask me instead of making it up.
```

Open `index.html` in your browser (double-click it, or ask Claude: *"open the site in my browser"*). It's real, and it's yours.

Now **iterate** — this is where it gets fun. One instruction at a time:

> *"Make the hero headline bigger and add a soft background color."*
> *"Add a short testimonial section above Contact."*
> *"The tone feels stiff — rewrite the About section to sound friendlier."*

*Website genuinely doesn't fit your work? Build the same kind of site for a passion project, a community group, or an event you care about — the skill is identical.*

---

## Challenge 3 — Install a Skill: Beautiful in One Command (~12 min)

**Goal:** Install someone else's expertise into your agent — once — and watch it level up the design of the site you just built.

**1. Install the skill.** In Claude Code, run these two lines:
```
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
```

**2. Point it at your site.**
> *"Redesign my site to look modern and professional — pick a style that fits my business."*

**3. Compare.** Open the new page next to the old one. Better type, spacing, color, layout — **and you never said *how*.** That's a **skill**: install once, expert forever. There are skills for writing, research, data, slide decks — an app store full of them.

> **Take it further at home:** ask for three different looks, one at a time — *"try a minimal editorial style," "now a bold tech-startup style," "now a warm boutique style"* — screenshot each and pick a winner.

---

## Group Debrief

- Who got their site redesigned by the skill? Let's open a couple — before and after.
- How did the **design skill** change your site? What style did it pick for *your* business?
- Walk back through what you did: you pointed an agent at a folder, built a real site from your own material, then installed expertise to make it beautiful — **and you never wrote a line of code.** You *directed*. That's the whole game.

> 🔜 **Next session** we hand this same site two more powers: **eyes** (a real browser the agent drives to debug it) and a **live URL** on the public internet. **Keep your folder** — we pick up right here.

---

## 🆘 Stuck? Quick fixes

| What you see | Likely cause | Fix |
|---|---|---|
| `claude` won't start or log in | not on a paid plan, or the install didn't finish | Confirm you're on a **paid** plan (Pro/Max/Console) and reopen the terminal. Still stuck? Do every exercise in **[Claude.ai](https://claude.ai)** with file upload — paste your folder's notes straight in. |
| `/plugin marketplace add …` errors out | the marketplace name moved, or a network hiccup | Re-run the two install lines exactly as written. If it still won't install, no stress — keep iterating on the design by just *describing* the look you want; the skill is a shortcut, not the only way. |
| `/init` seems to hang | it's reading every file in a large folder | Give it a moment. If the folder is huge, tell Claude to focus on the few files that matter and re-run. |
| Hebrew comes out **reversed / scrambled** | a display limitation — it's not you, and not Claude | Follow the step-by-step guide: **[hebrew-rtl-fix.md](hebrew-rtl-fix.md)** |

### 🔤 Working in Hebrew (RTL)

Hebrew coming out backwards — in the terminal or in the Claude panel? Every case has a fix, from a one-click switch to a one-command patch script. **→ Follow the full guide: [hebrew-rtl-fix.md](hebrew-rtl-fix.md)**

---

## 🔜 Next session — finish the build

You'll keep building in **this same folder**. In the Session 3 lab you'll:

- **Give the agent eyes** — install **Playwright**, a real browser it opens, screenshots, and uses to catch what's broken on your site.
- **Publish it live** — connect **Netlify** (an MCP) and put your site on the public internet with a real URL you can share.

Don't delete the folder. Bring it back next time, exactly as you left it.

---
---

# 🚀 Take It Further (At Home) — *bonus*

*You just built a real website and made it beautiful with a skill — all by directing an agent. Here's one more power you can add **at home**, if you want to push further: a tool that lets the agent work across your whole **Google Workspace** (Gmail, Calendar, Drive). It's the most involved setup of the bunch, so save it for when you've got time to go slow — it's a bonus, not homework.*

> 🔐 **One rule:** this connects the agent to a *real* account. Keep approving actions one at a time, and **never paste a token or password into a shared chat.** Treat access keys like house keys.

**Before you start:** this installs through `npm`, which needs **Node.js**. Run `node --version`; if it errors or shows below v18, install the **LTS** build from [nodejs.org](https://nodejs.org) (or `brew install node` on Mac), then reopen your terminal.

---

## CLI tool — `GWS`, your Google Workspace *(optional boss level)*

**What it is:** a command-line tool the agent can run on your behalf. **GWS** ("Google Workspace CLI") lets the agent reach into your Gmail, Calendar, Drive, Docs, and Sheets straight from the terminal. *(Remember the "app store" idea — Skills, MCP, **CLI tools**? This is a CLI tool, the third aisle.)*

> 🔴 **This is the boss level — the most involved setup** (~15 minutes), because Google makes *you* create the access credentials. Tackle it when you can go slow. Every click is listed below.

### Step A — Install the tool
- **Any OS (needs Node):** `npm install -g @googleworkspace/cli`
- **Mac alternative (no Node needed):** `brew install googleworkspace-cli`

Verify the install:
```
gws --version
```
> ✅ **Worked if** it prints a version number (e.g. `gws 0.22.5`).

### Step B — Get your key (create a Google OAuth client)
Google requires you to make your own access credential. All of this is in your browser at [console.cloud.google.com](https://console.cloud.google.com):

1. **New project** → project dropdown (top-left) → **New Project** → name it `gws-cli` → Create → make sure it's selected.
2. **Enable the APIs** you want the agent to reach. Search each in the top bar, open it, click **Enable**:
   - **Google Drive API** · **Gmail API** · **Google Calendar API**
3. **Consent screen** → left menu **APIs & Services → OAuth consent screen** (newer console: *Google Auth Platform → Get started*):
   - App name `gws-cli`, your email as support + developer contact, **Audience = External** → Save.
4. **Add yourself as a test user** → on the **Audience** / consent page, **Test users → Add users →** your Gmail → Save. *(This is what lets you log in while the app is still "unverified" — that's normal, it's your own app.)*
5. **Create the credential** → **APIs & Services → Credentials → Create Credentials → OAuth client ID** → Application type **Desktop app** → name `gws-cli` → Create → click **Download JSON**.

### Step C — Put the key where GWS expects it
GWS looks for the file at a specific path. Ask it where:
```
gws auth status
```
Read the **`client_config`** line — it shows the exact path (on Mac it's `~/.config/gws/client_secret.json`; on Windows it'll differ). Move and rename your downloaded file to **exactly that path**. For example, on Mac:
```
mkdir -p ~/.config/gws
mv ~/Downloads/client_secret_*.json ~/.config/gws/client_secret.json
```

### Step D — Log in
Start **read-only** (safest — the agent can look but not change anything):
```
gws auth login --readonly -s drive,gmail,calendar
```
A browser opens. You'll see an **"unverified app"** warning — click **Advanced → Go to gws-cli (unsafe)** → continue (it's your own app), choose your account, allow the scopes.

### Verify it's working
```
gws auth status
gws drive files list --params '{"pageSize": 5}'
```
> ✅ **Worked if** `auth status` no longer says `"none"`, and the second command lists a few of your real Drive files.

### Your take-home project — *put the agent to work on your week*
Now just talk to Claude in plain English — it'll run `gws` for you:
> *"What's on my calendar next week?"*
> *"Summarize the 10 most recent emails in my inbox as a table: sender · topic · does it need a reply?"*
> *"List my 5 most recently edited Google Docs."*

**Improve it:** combine steps into one instruction — *"Find the most urgent unanswered email from this week and draft a short reply."* (Drafting/sending needs write access — see below.)

### Good to know / gotchas
- The **"unverified app" warning is expected** — Google shows it for any personal project; you made it, so it's safe to proceed.
- **Read-only by default here on purpose.** To let the agent *create* drafts, events, or files, re-run login with full access: `gws auth login -s drive,gmail,calendar` (drop `--readonly`). Only do this once you trust the flow.
- **Test-user logins expire** after a while — if it suddenly asks you to re-auth, just run `gws auth login …` again.
- Real account, real data — keep human approval on, and never run it against an account you can't afford to have changed.

### Stuck? GWS quick fixes

| What you see | Likely cause | Fix |
|---|---|---|
| `npm: command not found` | Node.js isn't installed | Install Node **LTS** from [nodejs.org](https://nodejs.org) (or `brew install node`), then **reopen your terminal** |
| `gws auth status` still shows `"none"` | the client JSON is in the wrong place or misnamed | Put the downloaded file at the **exact `client_config` path** from `gws auth status`, named `client_secret.json` |
| Google: *"Google hasn't verified this app"* | normal for your own personal project | Click **Advanced → Go to gws-cli (unsafe)** → continue |
| GWS suddenly asks you to log in again | the test-user token expired | Just re-run `gws auth login …` |

*(You'll see GWS again next session — it's the final link in the build capstone, after you've published your site.)*

# Session 2 — Challenges: Your First Build

*We'll do these together through the back half of the session, in two acts. **Act 1 — Directing:** get the agent running on the material you brought, and build something real. **Act 2 — Supercharging:** give the agent new powers — design, eyes, and a live URL — and watch your site go from folder to the public internet.*

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

## Challenge 4 — Give It Eyes: Debug with Playwright (~12 min)

**Goal:** Hand the agent a real web browser. Where a skill teaches it a *craft*, a **CLI tool** gives it a *superpower it can run* — here, **Playwright**, which opens your site in an actual browser, takes screenshots, and catches what's broken.

**1. Install Playwright.** In your terminal, in the same project folder. **The command is identical on Mac and Windows:**
```
npm init playwright@latest
```
It asks a few setup questions — answer them like this:
  - **TypeScript or JavaScript?** → arrow down to **JavaScript** and press enter *(simpler — no build step, and Claude writes the scripts anyway)*
  - **Where to put your tests?** → just press enter (keep `tests`)
  - **Add a GitHub Actions workflow?** → press enter (no)
  - **Install Playwright browsers?** → **choose Yes** (type `Y`, press enter). ⚠️ **Don't skip this one** — without the browsers, Playwright has nothing to open and the next step fails. *Said no by accident? Just run `npx playwright install` to download them now.*

The browser download takes a minute the first time, and a couple of config files land in your folder — **that's normal, leave them.** *(Needs Node.js 18+ — if `npm` isn't found, install it first: see "Stuck?" at the bottom.)*

> ✅ **Worked if** `npx playwright --version` prints a version number.

**2. Put it to work.** Point it at the site you built (the folder with your `index.html`) and ask Claude:
> *"Use Playwright to open my index.html in a real browser window I can watch — **headed mode, not headless**. Resize it to a desktop size (1280px) and then a phone size (390px), screenshot each, and check the console for errors. Then tell me anything that looks broken, cramped, or hard to read."*

Approve the steps and **watch** — a real browser window pops open and Playwright drives it: loading your page, resizing, snapping screenshots. Then it reports back like a first-time visitor would.

> 💡 Playwright shines on a real, responsive page — **point it at your site, not a slide deck.**

**3. Fix and re-check.**
> *"Fix the issues you found, then run Playwright again to confirm the page looks right on both sizes."*

> ✅ **Worked if** you get two screenshots and a list of findings — and the second run looks cleaner than the first.
>
> **Can't install it?** Watch the instructor's run and try it at home. The idea — *the agent can see your site, not just write it* — is what matters.

---

## Challenge 5 — Publish It Live: Netlify (~12 min)

**Goal:** Take the site off your laptop and put it on the **public internet** with a real URL you can share. This is an **MCP** — it connects the agent to a live external service so it can *act* there. You describe it; the agent deploys it.

**1. Watch first.** Your instructor will ask a connected Claude to *"publish this folder to Netlify"* — and a real `https://….netlify.app` link appears in seconds.

**2. Set yours up.** Three short commands:
```
npm install -g netlify-cli
netlify login
claude mcp add netlify npx -- -y @netlify/mcp
```
`netlify login` opens a browser — click **Authorize** (sign up free first if you don't have an account; GitHub/Google/email all work). Then **fully restart Claude Code** (quit and reopen) — new MCP servers only load on restart.

> ✅ **Worked if**, after restart, typing `/mcp` lists **netlify** as connected.

**3. Ship it.** In your project folder, start `claude` and say:
> *"Publish this folder to Netlify and give me the live URL."*

Approve the steps. In a few seconds you get a real link — **open it on your phone.** Then iterate without leaving Claude:
> *"Change the headline to '…' and redeploy."* → refresh the URL, it updates.
> *"Give the site a memorable custom name."*

> **Can't connect in time?** No stress — **watch the demo and finish at home.** Setup notes are in "Take It Further" below. (We go deeper on MCP in Session 4.)
>
> ⚠️ A deployed site is **public** — don't put anything private on it. The free tier is plenty for this.

---

## Group Debrief

- Who got a live URL? Drop it in the chat — let's open a few.
- How did the **design skill** change your site? What did **Playwright** catch that you'd have missed?
- Walk back through what you did: you pointed an agent at a folder, built a real site, made it beautiful, gave it eyes to check itself, and published it to the internet — **and you never wrote a line of code.** You *directed*. That's the whole game.

---
---

# 🚀 Take It Further (At Home)

*In the session you built, designed, debugged, and published a real website — using a skill, a CLI tool, and an MCP. Here's one more power to add at home: letting the agent work across your whole **Google Workspace**. It's the most involved setup of the bunch, so save it for when you've got time to go slow.*

> 🔐 **One rule:** this connects the agent to a *real* account. Keep approving actions one at a time, and **never paste a token or password into a shared chat.** Treat access keys like house keys.

**Before you start:** this installs through `npm`, which needs **Node.js**. Run `node --version`; if it errors or shows below v18, install the **LTS** build from [nodejs.org](https://nodejs.org) (or `brew install node` on Mac), then reopen your terminal.

---

## CLI tool — `GWS`, your Google Workspace *(optional boss level)*

**What it is:** a command-line tool the agent can run on your behalf. **GWS** ("Google Workspace CLI") lets the agent reach into your Gmail, Calendar, Drive, Docs, and Sheets straight from the terminal.

> 🔴 **This is the boss level — the most involved setup** (~15 minutes), because Google makes *you* create the access credentials. You've got four wins under your belt now; tackle this when you can go slow. Every click is listed below.

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

---

## Stuck? Quick fixes

| What you see | Likely cause | Fix |
|---|---|---|
| `npm: command not found` | Node.js isn't installed | Install Node **LTS** from [nodejs.org](https://nodejs.org) (or `brew install node`), then **reopen your terminal** |
| `/mcp` doesn't list **netlify** | Claude Code wasn't restarted after `claude mcp add` | Fully **quit and reopen** Claude Code — MCP servers load only at startup |
| `netlify status` says "Not logged in" | the browser login closed before it finished | Re-run `netlify login` and wait for *"You are now logged in"* in the terminal before closing the tab |
| Playwright says "browser not found" | the engines didn't finish downloading | Run `npx playwright install` and let it finish |
| `gws auth status` still shows `"none"` | the client JSON is in the wrong place or misnamed | Put the downloaded file at the **exact `client_config` path** from `gws auth status`, named `client_secret.json` |
| Google: *"Google hasn't verified this app"* | normal for your own personal project | Click **Advanced → Go to gws-cli (unsafe)** → continue |
| GWS suddenly asks you to log in again | the test-user token expired | Just re-run `gws auth login …` |

---

## 🏆 Capstone — the full play, solo

Once GWS works, chain everything you learned into one instruction stream and watch the agent run the whole thing:

1. **Design** (skill): *"Redesign my one-page site to look professional."*
2. **Publish** (Netlify MCP): *"Now publish it to Netlify and give me the live URL."*
3. **Tell the world** (GWS): *"Email me that link with the subject 'My site is live'."*

You just directed three different powers — a craft, a live service, and your own Google account — in a single breath, and never touched code.

> Step 3 *sends* an email, which needs write access. If you set GWS up read-only, re-run `gws auth login -s drive,gmail,calendar` (without `--readonly`) first — or swap step 3 for a read-only finish: *"Check my calendar and suggest the best afternoon this week to announce the launch."*

---

## One more thing — *what these don't do* (so you stay in charge)

You now have several new powers wired into your agent. The honest limits:

- **They make you faster, not unsupervised.** Each add-on widens what the agent can *touch* — your files, your inbox, the public web. Keep approving actions one at a time until you trust a flow.
- **A skill gives taste; you give substance.** Design ≠ strategy. The agent makes your message land; you still decide the message.
- **Reach cuts both ways.** A CLI or MCP that can read your email or publish a site can also change or expose things. Start read-only, deploy only what's meant to be public, and guard your tokens.
- **Where to go next:** there are skills for writing, research, and data; CLIs for almost every tool you use; and MCPs for Slack, Notion, GitHub, databases, and hundreds more. The pattern never changes — **install once, then direct.** That's the whole game.

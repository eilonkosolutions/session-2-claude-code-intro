# Claude Code — Features Worth Trying

*Session 2 homework. These aren't the basics — they're the features power users actually live in. **Try every one at least once** before next session.*

> **How to read this:** open Claude Code in your project folder and just experiment. Most of these you can trigger two ways — type the `/command`, **or** simply ask for it in plain English ("set up a loop that…", "rewind to before that change"). There's nothing to break: your files are safe, and you can always undo.
>
> *Curated from Nate Herk's "I Tested Every Claude Code Feature, These 12 Are the Best" (June 2026).*

---

## 1. See what's actually happening

The single biggest upgrade for a beginner is **visibility** — knowing what the agent is thinking with and how much room is left.

| You type | What it does | Try this |
|---|---|---|
| `/statusline` | Pins your **model, effort level, and how full your context window is** to the bottom of the screen. Ranked the **#2 feature of them all** — *"the most slept-on thing ever."* It's how you know when the conversation is getting too full and it's time to start fresh. | `/statusline` → *"show my model, effort level, and context usage."* Then just leave it there. |
| `/context` | Shows **exactly what's filling the context window** right now — your files, memory, the conversation — and what's silently eating space. | Run it after a long session and see what's hogging room. |
| `/usage` | Your session + weekly stats: how many tokens you've used, on which models. | Check it at the end of a big build. |
| `/insights` | Generates an **HTML report on your last 30 days** — what you do a lot, where you're going wrong, quick wins, and skills you should build. | `/insights` after a week or two of real use. |

---

## 2. Aim it, then walk away

This is where it stops feeling like a chat and starts feeling like an *assistant*. Give it a target and let it run.

| You type | What it does | Try this |
|---|---|---|
| `/goal` | Give it a goal with a clear **definition of done** and it keeps working — *and checking its own work* — until it gets there. The trick is a goal it can objectively measure. | *"Research the best riddles and don't stop until you have 3 that are genuinely hard to solve."* &nbsp;or&nbsp; *"Keep tweaking my homepage until it loads instantly on a phone."* |
| `/loop` | Repeat a prompt on a schedule. It lives in that terminal window and stops when you close it. | *"Every 20 minutes, remind me to stand up and stretch."* |
| `/schedule` | Schedule an actual **agent** to run later — a "routine," not just a dumb script. It wakes up and works the way you would. | *"Every weekday at 8am, summarise my notes folder into 3 bullets."* |
| *"enable remote&nbsp;control"* | Drive your laptop's Claude Code session **from your phone** or the web. Just ask in plain English — it hands you a link, and it stays synced both ways. | Ask for it, open the link on your phone, and reply from the couch. |

---

## 3. Go bigger

When one assistant isn't enough, run several.

| You type | What it does | Try this |
|---|---|---|
| `/agents` | Spin up helper **sub-agents** that each tackle part of a task **in parallel** and report back to you. | *"Use sub-agents to research three competitors at once and give me one comparison table."* |
| *"create an agent&nbsp;team…"* | A panel of **personas** — a beginner, a CEO, a sceptical customer — that **debate in rounds until they agree**. Brilliant for pressure-testing an idea before you commit. *(Experimental — switch it on in settings first.)* | *"Create an agent team — a first-time visitor, a busy buyer, and a brand designer — and have them critique my homepage, then agree on the top 3 fixes."* |
| **Skills** | The **#1 feature.** Reusable "recipes" the agent follows — like the `ui-ux-pro-max` skill you installed in class. A skill = a cookbook recipe: written once, followed perfectly every time. Grab other people's (via plugins) or build your own. | Ask: *"Turn the way I just briefed you into a reusable skill I can call again."* |

---

## 4. Undo & tidy

Working with an agent is messy — these keep it clean.

| You type | What it does | Try this |
|---|---|---|
| `/rewind` | Roll back **both the code and the conversation** to an earlier checkpoint. Counter-intuitive but true: when it goes wrong, rewinding is usually *better* than saying "no, do it differently." | After a change you don't like: `/rewind` → pick the point to go back to. |
| `/memory` | Check (and turn on) **auto-memory** — Claude quietly improves its own memory between sessions, no prompting needed, so it gets to know your project over time. | `/memory` → make sure auto-memory is on. |
| `/clear` &nbsp;·&nbsp; `/compact` | The housekeeping pair. `/clear` starts a fresh conversation; `/compact` summarises a long one so it sharpens back up. Use them when the status line says you're running full. | When answers start drifting, `/compact`. |

---

## 5. For the curious *(bonus)*

| You type | What it does |
|---|---|
| *"give me an ultra&nbsp;plan for…"* | For a **big, ambiguous task**, offload the planning to a team of cloud agents while you keep working locally. *"Ultra plan: how could I double my newsletter signups this quarter?"* |
| `/theme` | Change the look — dark mode, light, colourblind-friendly, or your own custom colours. |
| *"do deep research on…"* | Kicks off a research workflow that goes wide on a topic and reports back. |

---

## Pro moves — combine them

The features get powerful when you stack them:

- **Fire-and-forget.** Give it a `/goal` with a clear finish line, kick off a `/schedule` or `/loop`, then glance at the **status line** when you're back to see where it got. Direct it like a teammate, not a search box.
- **Pressure-test before you ship.** Spin up an **agent team** to critique your website as different visitors, let them agree on the top fixes, then have Claude apply them — and `/rewind` anything you don't like.
- **Keep it sharp.** Watch the **status line**; when the context window fills up, `/compact` or `/clear` and let **auto-memory** carry what matters forward.

---

> **The move never changes:** point it at the right folder → give it the context → describe an outcome → **check the work.** Everything here just makes that loop faster, bigger, or safer.

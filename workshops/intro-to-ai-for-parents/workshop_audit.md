# Workshop Audit — Intro to AI for Parents

**Date:** 2026-06-25
**Method:** Two independent STEAM-workshop auditors — one on *learning design & STEAM pedagogy*, one on *AI content accuracy, examples & safety*. Both read all six content pages + config.
**Key constraint both weighed:** the backing model is **llama3.2:1b on CPU** — small, modest quality, slow. Several issues below stem from example prompts assuming capabilities this model doesn't reliably have.

---

## Verdict

A genuinely well-designed, honest beginner workshop. The spine — *autocomplete metaphor → hands-on → hallucination demo → verify/safety* — is above average for AI-literacy material and correctly stays non-technical. It is **not** lacking in scope for a 30-minute beginner session; the gaps are **quality and currency**, not quantity.

**The two things that will actually fail in front of parents:**
1. The **hallucination demo may not fire** on a 1B model (it can just say "I don't know"), which teaches the *opposite* lesson.
2. Parents may leave believing **"AI chat is private"** — generalized from this local sandbox to ChatGPT at home, contradicting the (correct) safety lesson.

Fix those two, add two 2026-era safety points (AI companions; deepfakes/scams), set expectations about the small model, and weave in one creative/Arts beat — and it's a current, polished parents' intro.

---

## Strengths (keep these)
- **The autocomplete metaphor** (01) is the right mental model and is reused into the summary — good scaffolding.
- **The hallucination demo** (04) is the best beat — experiential, not told. (But see Must-Fix #1: make it reliable.)
- **Every example is parent-relevant** (dinners, teacher note, screen time) — lowers the "not for me" barrier.
- **Safety as judgment, not fear** ("knowing when to double-check") — pedagogically mature, not fear-mongering. If anything it currently *under*-warns.
- **Reassuring tone** ("you can't break anything").

---

## MUST-FIX (factually risky or demo-breaking)

### M1 — Make the hallucination demo reliable (HIGH) — page 04
On a 1B model the fake-author prompt is a coin-flip: it may refuse/"I don't know" (teaching the opposite), output garbage, or invent something obviously silly rather than "confidently plausible." The whole safety message hangs on parents *seeing* it.
- Use a **presupposing** prompt that suppresses the "I don't know" path: *"Tell me about the famous children's author Marlena Quibbleton and her three most popular books."*
- Add a **guaranteed backup** (1B models reliably fail these, and they're trivially checkable): *"How many times does the letter 'r' appear in 'strawberry'?"* or *"What is 348 × 27?"*
- Reframe the instructions so **both outcomes win**: "Often it invents books/dates — a hallucination. If instead it says it doesn't know, try this one, which almost always trips it up: [backup]. Either way: check anything that matters."
- Add a concrete **how-to-verify** (lay users don't know how): "search the title, or ask a second AI and see if the answers match."

### M2 — Fence the "private / nothing leaves the box" claim (HIGH) — pages 00 & 02
True *here* (local model), but a first-timer generalizes "AI chat = private," which directly contradicts page 04's "postcard, not a diary." Add a contrast sentence: *"This is private because the assistant runs locally just for you. Most tools you'll use at home (ChatGPT, Gemini, Copilot) send what you type to a company's servers and may train on it — so the safety-page rules apply to those."*

### M3 — Add an "AI companions / attachment" safety point (HIGH) — page 04
The defining 2024–26 child-safety story (Character.AI/Replika-style "AI friends," minors forming emotional bonds, related litigation) is **absent**. Add: some apps are designed as AI "friends/companions"; kids can form real attachments; they're not a substitute for people or mental-health support; know which apps your child uses; emotional reliance is a signal to talk (and involve a professional).

### M4 — Add a "deepfakes / voice-clone scams / AI 'nudify' bullying" safety point (HIGH) — page 04
Relevant to parents themselves (voice-clone "relative in trouble" scams → agree a family code word) and to kids (AI face-swap/"undress" apps used for school bullying — a major 2025–26 issue; may be illegal → report to school/police). Currently missing.

---

## SHOULD-CHANGE (quality on a weak model + pacing)

### S1 — Set expectations about the small model (HIGH for UX) — page 03 (top)
Add one honest line so weak 1B output doesn't read as "AI is broken": *"The assistant here is a small, local model — a great practice partner, but its answers are simpler than ChatGPT's. The skills you learn work even better on the big tools at home."* This single sentence inoculates against the disappointment most likely to sink a nervous first-timer.

### S2 — Fix example prompts that a 1B model will fumble (MED) — pages 02–03
Multi-constraint prompts (count + age + tone + format + length) and math are exactly where a 1B model drops requirements and disappoints. See the **Example adjustments** table below.

### S3 — Add a side-by-side reflection on the vague-vs-specific demo (HIGH, pedagogy) — page 03
Currently it *tells* the learner the second answer is better before they reflect. Insert a noticing prompt before the takeaway: *"Look at the two replies. Which could you use tonight? What did the AI know in the second that it had to guess in the first?"* Make the learner generate the conclusion, then confirm it.

### S4 — Soften "it remembers" (MED) — page 02
Plants a false "AI has memory" belief. Reframe: *"Within one conversation it can refer back to what you said. Start a new chat and it forgets — though some apps keep a history, so check the settings."*

### S5 — Page 04 is overloaded for 30 min (MED, pacing)
It carries hallucinations + privacy + homework + talking-to-kids + a demo + a reusable prompt — ~2× any other page, and it's last (fatigue when retention matters most). Adding M3/M4 makes this worse. **Tighten existing sections to bullets** and/or split "Talking to your kids" into a short closing reflection before the wrap-up. Don't just pile on.

### S6 — Add the remaining 2026 safety points, concisely (MED) — page 04
- **ToS / minimum age:** "Most AI apps set a minimum age — often 13, sometimes 18. Check the app. 'Allowed' ≠ 'right for your child.'" (Keep it generic — ages drift.)
- **Training-data opt-out:** "Many free tools train on your chats by default; most let you turn that off in settings or use a 'temporary chat.'"
- **Emotional reliance / crisis:** "An AI is not a counselor; it can handle serious topics badly. Make sure kids know the real humans and helplines."

---

## STEAM completeness — "should we include more?"

The workshop is tech-heavy; the **A (Arts/creativity)** and **M (numeracy/critical-thinking)** of STEAM are thin. Both are fixable in a handful of lines and are the highest-value additions.

### A — Add ONE creative "do-it-with-your-kid" prompt (HIGH value, low cost) — page 02 or 03
The use case parents most do *with* a child, and the one that creates delight, not just efficiency. e.g.: *"My 6-year-old loves dinosaurs and the ocean. Help us make up a short bedtime story that combines both, and pause so my child can decide what happens next."* Frame explicitly as "do this one with your kid." Models AI as collaborative creativity — the healthiest framing for kids.

### M — Add a reusable critical-thinking gut-check — page 04
Parents are told AI can be wrong but never given a *repeatable habit*. Add a 3-question check they can reuse and teach: *"Does it sound too confident? Could I check it in 30 seconds? Would I act on it without checking?"* Optionally teach asking the AI itself: *"How sure are you, and what should I double-check?"*

### Take-home artifact (HIGH) — pages 04 + 99
The family-rules prompt already produces the perfect artifact, but nothing tells the parent to keep it. Add after it: *"Worth keeping — copy this into your phone's notes or screenshot it before you close."* Then reference "the family rules you saved" in the summary. One saved artifact beats three future intentions.

### Closure self-check (LOW–MED) — page 99
Reframe "What you learned" as a quick self-assessment mirroring the objectives: *"Can you now… explain a chatbot in one sentence? Spot why it might be wrong?"* Strengthens retention and sense of completion.

---

## "Should we include more?" — ADD vs DON'T ADD (scope discipline)

**ADD (high value, fits the 30-min beginner envelope):**
- M1–M4 (reliable demo; privacy fence; AI-companions + deepfakes safety).
- S1 small-model expectation line; S3 reflection beat.
- One creative/Arts prompt; the critical-thinking gut-check; the save-your-rules artifact; the closing self-check.

**DON'T ADD (deliberate scope guards — both auditors agreed):**
- How LLMs/neural nets/tokens/training actually work — the metaphor is enough; mechanism breaks the beginner contract.
- Image generation as a hands-on task — the chat UI is text-only; demoing what you can't do here frustrates. Mention it exists, don't task it.
- A tour of multiple tools / pricing / account setup — anxiety with no payoff inside the sandbox.
- Advanced prompt-engineering (roles, chain-of-thought) — the who/what/how recipe is the right ceiling.
- A full AI-ethics/bias/jobs treatment — one sentence at most; a real treatment blows the budget.

---

## "Should we adjust our examples?" — per-prompt assessment

| Page | Prompt (abridged) | Verdict on 1B | Recommended change |
|---|---|---|---|
| 02 | "explain what you can help me with" | **Good** | Keep — ideal low-constraint opener. |
| 02 | "3 quick healthy weeknight dinners… ages 7 and 10" | OK/borderline | Keep; consider dropping the ages to cut a constraint. |
| 02 | "what is a 'group chat' and why teen cares… explain to a parent" | **Weak** (two-part + persona) | Split into *"In simple terms, what is a group chat?"* then a follow-up *"Why do teenagers like them so much?"* — also models multi-turn. |
| 02 | "kind note to my child's teacher…" | **Good** | Keep — short text-gen is the 1B sweet spot. |
| 03 | vague: "How do I talk to my kid about screen time?" | **Good** (as the bad example) | Keep. |
| 03 | specific: "3 phrases + 1 tip + in-the-moment + before…" | **Risky** (4 constraints) | Simplify so it *reliably* beats vague: *"I'm a parent of a 9-year-old who gets upset when screen time ends. Give me 3 short, calm things I can say. Keep them simple."* |
| 03 | "birthday party under $100, what to buy + schedule" | **Too ambitious** (money math) | Replace: *"List 5 simple, low-cost activities for a 6-year-old's birthday party at home."* |
| 03 | "why is the sky blue, for a 7-year-old, ~4 sentences" | **Good** | Keep — best on the page. |
| 03 | "turn this to-do brain-dump into a weekend plan" | Borderline | Add structure it can fill: *"Group them into morning, afternoon, and evening."* |
| 04 | hallucination: "3 books by Marlena Quibbleton" | **Unreliable** | See M1 — presupposing prompt + arithmetic backup. |
| 04 | "3 family rules for AI safety, ages 8–14, short + positive" | OK/borderline | Trim: *"Write 3 short family rules for using AI safely with kids. Keep them positive."* |

---

## Accuracy notes (sharpen, not wrong)
- **"Not a database/search engine" (01):** correct for the raw model, but in 2026 many *products* (ChatGPT/Gemini/Copilot) browse and cite. Add a clause: *"(Some newer assistants can also search the web and show links — but the engine underneath still predicts words.)"* so the deck doesn't read as outdated.
- **"It isn't lying — it has no idea it's wrong" (01):** accurate and well-judged — keep.
- **Academic integrity (04):** well-balanced; minor add — **AI-detector tools are unreliable** and students have been falsely accused (a real parent concern).

## Copy-edit nits (LOW)
- 01: double space "called  **chatbots**"; the lone "Gemini" intro adds little for this audience.
- 03: run-on "you don't start over you just tell it what to change" (missing punctuation).
- Dash style: mixed `-` and `—` across pages — standardize (accessibility/screen-reader consistency).

## Currency (what will age poorly)
- The "not a search engine" framing (already partly dated — see above).
- Don't hard-code minimum ages — write "often 13, sometimes 18, check the app."
- Model-name lists will churn; "tools like ChatGPT and Gemini" is safe (consider adding Copilot given household ubiquity).
- No dated stats/version numbers anywhere — good; keep it that way.

---

## Prioritized action list

**Do first (HIGH):** M1 reliable hallucination demo · M2 privacy fence · M3 AI-companions safety · M4 deepfakes/scams safety · S1 small-model expectation line.
**Then (MED/pedagogy):** S3 reflection beat · example fixes (group-chat, screen-time, birthday) · the Arts creative prompt · the critical-thinking gut-check · save-your-rules artifact · S4 "remembers" softening · S6 ToS/training/crisis safety lines · S5 rebalance page 04.
**Nice-to-have (LOW):** closing self-check · "search engine" clause · AI-detector note · copy-edit + dash consistency.

> Both auditors' overall note: the workshop's discipline about staying non-technical is its strength — resist deepening the tech. The wins here are reliability on the weak model, 2026-current safety, and a light creative/critical-thinking thread.

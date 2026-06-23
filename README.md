# OTM Workshop Starter

A safe, sane starting point for **co-creators** authoring workshops for the
Out The Mud (OTM) Educates platform.

Fork or copy this repo, write workshops under `workshops/`, push, and ask an OTM
operator to **bless your commit**. The platform pulls your content straight from
GitHub — you never build an image or touch the cluster.

## Layout

```
workshops/
  hello-cocreator/        # sample #1 — copy this to start
  second-sample/          # sample #2 — proves one repo can hold many workshops
.claude/skills/           # authoring skills (for Claude Code)
.agents/skills/           # same skills, canonical copies (for Codex / open standard)
CONTRIBUTING.md           # the authoring + submission workflow and the rules
```

Each `workshops/<name>/` is a complete workshop:

```
workshops/<name>/
  resources/workshop.yaml   # the Workshop definition (session config)
  workshop/
    config.yaml             # pathways + modules (page order)
    content/*.md            # the guide pages
    setup.d/*.sh            # optional per-session setup
  README.md                 # short description
```

## Authoring help is built in

Open this repo in **Claude Code** or **Codex** and the bundled skills activate:

- **`educates-workshop-authoring`** — how to write workshop YAML, content,
  clickable actions, setup scripts, etc.
- **`educates-course-design`** — how to plan a multi-workshop course.

## Runbook: author and ship a workshop

Follow these steps end to end. No image build, no cluster access.

1. **Get the repo.** Fork this repo (or, if you're an org member, clone it):
   ```bash
   git clone https://github.com/Out-The-Mud-Work-Shops/workshop-starter
   cd workshop-starter
   ```
2. **Create your workshop** by copying a sample:
   ```bash
   cp -R workshops/hello-cocreator workshops/<your-workshop-name>
   ```
3. **Edit the definition** — `workshops/<your-workshop-name>/resources/workshop.yaml`:
   set `metadata.name` (unique), `spec.title`, `spec.description`. Keep the
   `session:` block within the **allowed subset** (see `CONTRIBUTING.md`):
   `budget: small|medium`, `role: view`, only terminal/editor/slides apps,
   memory ≤ 1Gi, storage ≤ 2Gi. Do **not** add a `publish:` or
   `workshop.files:` block — the platform injects the file source for you.
4. **Write your content** — pages in `workshops/<your-workshop-name>/workshop/content/*.md`,
   listed in `workshop/config.yaml`. Optional per-session setup goes in
   `workshop/setup.d/*.sh` (keep it in-session and non-privileged).
   Tip: open this repo in **Claude Code** or **Codex** — the bundled
   `educates-workshop-authoring` skill guides every field.
5. **Commit and push:**
   ```bash
   git add -A && git commit -m "Add <your-workshop-name> workshop" && git push
   ```
6. **Get the commit SHA** to hand off:
   ```bash
   git rev-parse HEAD
   ```
7. **Request deployment.** Send an OTM operator your **repo URL** and that
   **commit SHA**. They review the commit, bless that exact SHA, validate it
   against the policy clamp, and deploy it to the `otm` portal.
8. **Iterate.** Pushed a fix? Send the operator the **new SHA** — blessing
   pins an immutable commit, so a fresh push won't go live until it's blessed.

> Operators: the review/bless/deploy side of this runbook lives in the OTM
> platform repo at `dell-precision/co-creators/README.md`.

## What you do NOT need

- No `Dockerfile`, no image build, no registry access.
- No `publish:` or `workshop.files:` block — the platform injects the file
  source pointing at your blessed commit automatically.
- No Kubernetes or cluster credentials.

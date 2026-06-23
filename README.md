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

## Quick start

1. Copy `workshops/hello-cocreator/` to `workshops/<your-name>/`.
2. Edit `resources/workshop.yaml` and the pages under `workshop/`.
3. Keep `session:` within the allowed subset — see **`CONTRIBUTING.md`**.
4. Commit and push.
5. Send an OTM operator your repo URL and the commit SHA to bless.

## What you do NOT need

- No `Dockerfile`, no image build, no registry access.
- No `publish:` or `workshop.files:` block — the platform injects the file
  source pointing at your blessed commit automatically.
- No Kubernetes or cluster credentials.

# Contributing a workshop

This repo is served by the OTM platform through a **policy clamp**: the platform
validates every workshop before it deploys and **rejects** anything outside the
allowed subset below. The bundled `educates-workshop-authoring` skill documents
the *full* Educates Workshop surface — this page tells you which parts are
allowed for co-creators, so you don't author something that gets rejected.

## Submission workflow

1. Add or edit a workshop under `workshops/<name>/`.
2. Validate locally if you can (optional): an OTM operator can run the clamp
   against your folder before you push.
3. Commit and push to this repo.
4. Send an OTM operator the **repo URL** and the **commit SHA** you want live.
5. The operator blesses that exact SHA (immutable — a moved tag/branch won't be
   picked up), runs the reconciler, reviews the plan, and deploys.

> Because blessing pins a **commit SHA**, what the operator reviews is exactly
> what runs. If you push fixes, send the new SHA.

## Allowed subset (the policy clamp)

| Field | Rule |
| --- | --- |
| `spec.workshop.image` | Must stay `ghcr.io/educates/educates-base-environment:3.7.1` (the allowlisted base). |
| `spec.session.namespaces.budget` | `small` or `medium` only. |
| `spec.session.namespaces.role` | `view` only. (`edit` is granted per-repo by an operator, not self-served.) |
| `spec.session.namespaces.security.token.enabled` | Must be `false` / unset. |
| `spec.session.applications` | Only `terminal`, `editor`, `slides`. `console`, `docker`, `registry` must be disabled. |
| `spec.session.resources.memory` | ≤ `1Gi`. |
| `spec.session.resources.storage` | ≤ `2Gi`. |
| `spec.session.ingresses[].host` | Must target your own session namespace via `$(session_namespace)`. No cross-namespace / shared-service hosts. |
| `spec.session.env[].value` | Must not reference `$(services_password)` or other secret data variables. |
| `spec.session.objects` | If used: no `Role`/`RoleBinding`/`ClusterRole`/`ClusterRoleBinding`/`NetworkPolicy`/`ResourceQuota`/`LimitRange`/`Namespace` kinds; every object must target `$(session_namespace)`; no `hostPath`, `hostNetwork`, `privileged`, or `allowPrivilegeEscalation`. |
| `spec.environment.objects` | Not allowed (operator-only). |

## What you should NOT put in `workshop.yaml`

- **No `publish:` block** and **no `spec.workshop.files:` block.** The platform
  injects the git file source pointing at your blessed commit, scoped to your
  workshop folder. If you add `files:` it will be replaced.
- No image references to anything but the allowlisted base in
  `spec.workshop.image`. (Containers you launch as part of a lab belong in
  `session.objects` — and those images are reviewed.)

## setup.d guidance

`workshop/setup.d/*.sh` runs in your session pod at start. Keep it to in-session,
non-privileged work (writing files into `$HOME`, fetching small assets you
control). Do **not** reach shared cluster services, the registry, or other
namespaces — the clamp and (later) network policy exist to stop exactly that, and
such scripts will fail or get your repo un-blessed.

## Getting it deployed faster

- Start from `workshops/hello-cocreator/` — it's already clamp-clean.
- Use the `educates-workshop-authoring` skill (open this repo in Claude Code).
- Keep one workshop per folder; the platform deploys each `workshops/*/`
  separately.

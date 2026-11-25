---
name: push-pr
description: Push the current branch to my fork and suggest a PR description. Only when I invoke it.
disable-model-invocation: true
---

# Push and suggest a PR

Invoking this skill is my explicit request to push the current branch to `origin`. If I invoke it alongside a task, do this once the task is done and its targeted tests pass.

## Check first

Stop and say why if any of these hold:

- The current branch is the base branch (`develop`, `main`, or whatever the upstream default is).
- There are uncommitted changes that belong to the work. Commit them first if I asked for that; otherwise ask.
- `origin` is not my fork, i.e. it points at the upstream org's repo.

## Push

- `git push -u origin <branch>`. Never push to `upstream` or any other remote.
- No force push unless I say so. If the push is rejected because the branch was rebased, report it and ask.
- Don't open the PR.

## Suggest the PR

- Base: `upstream`'s default branch if there is an `upstream` remote, else `origin`'s.
- Write the title and description per the `github` skill, in a fenced markdown block I can paste.
- Give the compare link: `https://github.com/<upstream-owner>/<repo>/compare/<base>...<fork-owner>:<branch>`, or `https://github.com/<owner>/<repo>/compare/<base>...<branch>` without an upstream.

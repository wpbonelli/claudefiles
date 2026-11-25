---
name: planning
description: Write local planning docs, analyses, and handoff notes (e.g. *-plan.md in a repo root, docs/dev/plans, archive/). Use when asked to write planning documents, where we are, what we've accomplished, before compacting, when handing work to another agent session, etc.
---

# Planning docs

Write up a local plan. Write down what we've considered so we don't forget. Make sure content survives compactions.

## Where

**Local** means untracked, in the relevant repo's main checkout root (not a worktree that will be cleaned up, not a temp dir). Use the repo I name, if I name one. Say the full path when done. Finished or superseded plans move to `archive/` unless that directory is for something else.

## Style

Write like the repo's existing developer docs: usually detailed but terse. None of the following:

- Status tables, confidence levels, or "Decision: firm/tentative" labels. Everything in a plan is understood to be our current best understanding.
- Effort estimates, timelines, or phases, unless explicitly discussed.
- No "what we left out" or "out of scope" padding, unless an exclusion needs recording.
- No recap of the conversation. State the conclusions and their reasons.
- Headings are fine. Keep them few and functional, and brief.

## Content

Capture what a fresh session, with no context, needs to pick up the work:

- The problem, concretely, with file/issue/PR references.
- Decisions made and why, including alternatives we rejected and why. It is valuable to remember what we tried and why we abandoned it.
- Mark open questions as such, if there are any.
- Make next steps concrete enough to act on. Name branches, worktrees, PRs.
- Explain concepts from first principles when the doc is for others.

When making corrections to an analysis, update the doc so it's correct. Don't add a separate corrections section.

If asked for a condensed summary, it might be to aid in drafting a post on GitHub. See `github`: casual, short, bullets, etc are fine.

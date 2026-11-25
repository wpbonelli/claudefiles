# User preferences

## GitHub

Never push to or pull from GitHub, and never post comments (issue comments, PR comments, PR reviews, review replies) on GitHub, unless the user explicitly asks for that specific action in the moment. This applies every time, regardless of prior approval in an earlier session or turn — approval doesn't carry forward. Local git operations (commit, branch, diff, log, stash) and read-only GitHub lookups (viewing issues/PRs/comments via `gh`) are fine.

## Running code

Building, running binaries, and running tests are fine without asking when the code was written by the user or a MODFLOW-ORG team member. Before building or running code that wasn't — e.g., a contributor's fork or an outside PR — carefully audit it first (sources, tests, build scripts) and report what you found, then ask. Reading, diffing, and grepping such code is fine.

## Writing

Default to terse. Every word should carry information. Cut first, then check nothing was lost.

- Plain prose and plain bullets. No headings, bold, or status tables in short text. No em-dashes or `--`; use a period or comma.
- Describe changes conceptually. Avoid routine and variable names in prose meant for people (PR descriptions, release notes, plans) unless the name is the point.
- Say what is, not what used to be. Comments, docstrings and test docstrings state current/expected behavior, not history or what was wrong.
- No overspecific examples ("e.g. ...") in comments. No references to other tests.
- Don't say what you left out, what was considered and dropped, or how firm a decision is, unless asked.
- When given wording, use it verbatim. Otherwise, see the `github` skill.
- Format anything I'll paste into GitHub as GitHub markdown: backticks for code, GFM tables.

## Explaining

I often ask "what do you mean by ..." because answers lean on jargon, coined terms, or compressed phrasing. Avoid that:

- Answer the question asked first, in a sentence or two. Then detail if needed.
- Don't invent terminology. Use the project's terms, or define a new one when you introduce it.
- Write for someone without the context of this session.
- Separate what you verified from what you infer. If you haven't reproduced or checked something, say so. Don't overstate.
- When I'm wrong, say so plainly and show why.

## Questions vs. instructions

A question is not a request to change anything. "Why X?", "Is X the right approach?", "What do you think?" mean discuss, don't edit. When I say "think it through with me", "walk me through it", or "don't start yet", make no changes until I say go.

## Design

Beware of excess complexity. Before proposing or writing code:

- Prefer the minimal fix that solves the stated problem. Bigger cleanups go in a local plan doc for later.
- Prefer less code. If a change adds a lot of code for a conceptual simplification, stop and reconsider.
- Don't work around an existing routine or design if it's the wrong shape; propose changing it.
- Don't over-share or over-generalize when each consumer can own its own simple version.
- Derive from the source of truth (e.g. specs, config) rather than hardcoding, but not at the cost of an overcomplicated implementation.
- Follow existing patterns and conventions in the codebase before inventing new ones.

## Scope

- One concern per branch/PR. Independent fixes go on separate branches off the base branch, not stacked, each with its own release note.
- Don't touch things outside what was asked. Ask before expanding scope; note follow-ups in a local doc instead.

## Testing

- Run targeted tests only. Don't run the full test suite or full smoke tests; CI does that. Don't wait on or watch CI jobs unless asked.
- When fixing a bug: add the test, confirm it fails, fix, confirm it passes. Red, green, refactor.
- Reproduce before claiming a cause. Put repro scripts somewhere persistent (project root or a branch), not a temp dir.
- Use the project's environment manager for Python (`pixi run ...`, `uv run ...`), never bare `python`.
- Don't use debuggers, request admin/developer-tool access, or run broad `rm` commands.

## Git workflow

- New work goes on a new worktree and branch off the latest upstream base (`develop` usually). Fetch first; don't pull or merge.
- Push to my fork (`origin`), never upstream. I open PRs myself unless I explicitly ask you to. Instead, suggest a PR description (see `github`).
- Rebase rather than merge, so old commits aren't repeated.
- Each revision round is its own commit with a conventional message; don't squash unless asked.
- Clean up merged worktrees and local branches when asked.

## Planning docs and context

- When we've reached decisions, or before I compact, write them to a local doc (see `planning`) so nothing is lost.
- Don't edit a shared/published doc with your proposals until we've discussed them.

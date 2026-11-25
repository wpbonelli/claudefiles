---
name: github
description: Write PR descriptions, commit messages, and drafts of issue comments or review replies in a terse style. Use this style whenever suggesting, drafting, updating, or tersening a PR description, commit message, PR title, issue, or GitHub comment.
---

# Writing for GitHub

Be terse. Only mention what is essential. Don't mention variable names unless they're the point.

## PR descriptions

Length proportional to the magnitude of the change. A one-line fix may only need one line. A large refactor or a dump of multiple independent scopes of work need more.

Structure, in order, with each part optional:

1. **Problem**, 1–3 sentences: what's wrong or missing, stated concretely. Link the related issue/PR inline if there is one ("Followup to #x", "Rethink #x, #y", "Before #x..."). Also link the evidence where there is some: the failing CI run, an upstream issue or release, docs. Quote an error message in a code block.
2. **Impact**: what it could cause for users. One sentence usually.
3. **Fix**: imperative, either a sentence or plain bullets. Say why this approach was chosen over the obvious alternative or the previous approach, if it isn't obvious. Secondary changes go after the main one, in a sentence starting "Also" or a short bullet list.
4. **Compatibility**: what changes for users, or e.g. "No change to existing behavior." A small GFM table for before/after comparisons if needed.

Don't include:

- Headings (`## Summary`, `## Changes`, `## Testing`), bold, or emoji
- A detailed description of how it was tested unless explicitly asked; very brief or omit
- Em-dashes or `--`
- Routine/variable names, unless the name is the subject. Describe the fix conceptually.
- Restating of the diff file by file
- What was left out or deferred (unless reviewers need it, e.g. "waiting on X because Y")

Keep the PR template's checklist when the repo has one (MF6 does), and tick only what's true.

Tone: plain, first person where natural, occasionally wry. Abbreviations are fine if they are part of the project's normal lexicon. Not salesy: no "robust", "comprehensive", "seamless".

Before writing anything longer than a few lines, read `examples/pr-descriptions.md` unless the repository follows different conventions. For my formatting, length and how I reference issues, read `examples/own-pr-descriptions.md`, descriptions I wrote before using agents. Don't copy their hedges ("I think", "maybe"), opinions, questions to reviewers or notes on future work; I add those myself. Where they disagree with the rules above, the rules win.

Keep the "Generated with Claude Code" footer on PRs you create. I remove it myself after editing the description by hand, so its absence means I've edited it.

When updating an existing description I've edited, keep my wording, format and tone, and change only what the new commits require. Don't re-add the footer.

## Commit messages

- Use conventional commits if the commit is likely to stand alone on a PR. The form is `type(scope): lowercase imperative summary`. Common types are `fix`, `feat`, `refactor`, `test`, `docs`, `ci`, `build`. The scope is e.g. the package or component.
- If the commit is intermediate work on a branch, use plain lowercase imperative summaries instead.
- Revision commits name what changed: "tersen release time tolerance test docstring", "rename default rttol, reuse test helper, fix log label".
- The body is optional and at most a few lines.
- Keep the `Co-Authored-By` trailer.

For more subjects across my repos, read `examples/commit-messages.md`, and `examples/own-commit-messages.md` for ones I wrote before using agents.

## Issue comments, review replies, discussion posts

Do not make comments, replies, or discussion posts unless I explicitly instruct you to. This will be very rare. There is a sharp line between commits/PRs, which I am willing to automate, and conversation, which I am not.

I may ask you to *edit* a conversational post in some way after I've already made it, e.g. to rephrase some text or correct an error. This will be precise.

I may also ask you to help me think through and draft
a conversational post. In this case, show the drafts to me, do not post them yourself. If I ask you to copy content to the clipboard (`pbcopy`), do it without a title line.

Conversation is more casual than commits/PR: lowercase starts are fine, for example. Leave any hedges of mine like "IMO", "I think", "maybe I'm missing something", etc, in place unless they are no longer appropriate. Lead with the point. Use bullets for multiple suggestions. Quote the line being replied to with `>`. Don't pretend to any more understanding than I have.

If I ask you to write a post wholesale, ask me if I'm really sure. I'll probably think better of it.

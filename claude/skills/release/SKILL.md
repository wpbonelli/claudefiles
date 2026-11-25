---
name: release
description: Write or revise release notes (e.g. MODFLOW 6 doc/ReleaseNotes/items/*.toml, flopy changelog entries) so they are user-oriented and terse. Use whenever adding a release note to a fix or feature, or when asked whether a release note is clear.
---

# Release notes

Release notes are written for the user, not developer.

Before writing, if the repository maintains release notes by hand, read several of them and match their section, subsection, and phrasing conventions.

## Rules

- Say what the user would observe: wrong results, an error, early termination, a missing warning, etc. Not the mechanism unless it's absolutely necessary.
- Lead with when it could happen, then the consequence, then say what happens now.
- Use terms the user would know, not internal, theoretical, or developer-oriented terminology.
- Don't mention which version introduced the bug unless it's essential. Say how behavior changed only as far as the user needs to know what to expect now.
- Be terse, but cover every user-facing change. If the fix also adds an error or warning, or changes accepted input, say so.
- Put each unrelated user-facing change in its own note.
- Plain, definite verbs.
- Not every fix needs a note. A purely internal change, a test-only change, or a fix for something never released doesn't. If you're unsure, ask.

## Example

Before writing or revising a note, unless the repo has its own conventions, read and follow `examples/release-notes.md`.



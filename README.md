# claudefiles

Claude Code instructions distilled from evidence. No PII.

## Layout

- `claude/CLAUDE.md`: global preferences, linked to `~/.claude/CLAUDE.md`
- `claude/skills/`: skills, linked to `~/.claude/skills/`
  - `github`: PR descriptions, commit messages, etc
  - `release`: user-facing release notes
  - `planning`: local plans and handoff docs
- `claude/skills/.../examples`: style examples
- `scripts/build_examples.py`: renders examples from `steerage` data
- `data/`: raw conversations, git/GitHub data, stylistic derivations

## Usage

```sh
./run.sh         # harvest/analyze data and render examples
./install.sh     # symlink claude/ to ~/.claude, backing up old files
```

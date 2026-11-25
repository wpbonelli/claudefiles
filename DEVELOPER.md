# Developing

## Refreshing the instructions

1. `./run.sh` harvests data into `data/` with [steerage](https://github.com/wpbonelli/steerage), then renders the skill examples. Pass step names to run only those (`./run.sh pairs eras`). `uvx --from git+https://github.com/wpbonelli/steerage steerage --help` lists the steps and settings.
2. Read `data/compact_revisions.txt`, `data/themes.md`, `data/pr_body_diffs.md` and `data/eras.md` for new patterns.
3. Edit `claude/CLAUDE.md` and the skills by hand. Nothing writes them automatically.

`run.sh` sets the date I started using agents and skips this repo's own transcripts. To try steerage changes before pushing them, set `STEERAGE` to a local checkout: `STEERAGE=../steerage ./run.sh`.

The full GitHub fetch takes tens of minutes. Past years are cached under `data/search/`, so later runs only refetch the current year.

## Examples

`scripts/build_examples.py` renders `claude/skills/*/examples/` from `data/pairs.jsonl`. Only public repos are used. Regenerating changes which examples are picked whenever new PRs come in, so a diff there is expected.

Examples name no people or repos. Headings carry only the title, and these become `some_user`:

- logins and profile names of everyone who reviewed, commented on or edited my PRs (`data/people.tsv`, from steerage)
- extra logins listed one per line in `scrub.txt` in the repo root. It's gitignored, since its contents are what we want kept out. It holds my old login; recreate it on a new machine or that login comes back.
- `@mentions` outside code, email addresses and co-author trailers

Scrubbing misses people named in text who never took part in a PR, and participants with no profile name. Read the rendered examples before committing. `data/examples.tsv` maps each example back to its PR.

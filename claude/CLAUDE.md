# Personal instructions

## Attribution

- Never add Claude as a commit co-author: no `Co-Authored-By: Claude` trailer in commits.
- The "Generated with Claude Code" line in PR descriptions is fine.

## Pull request descriptions

- Keep the Overview to two sentences, each on its own line: what changed, and the
  effect or why.
- Put the detailed breakdown (files, decisions, caveats) under the Overview in a
  collapsed block:

  ```markdown
  <details>
  <summary>Details</summary>

  - ...

  </details>
  ```

- Follow the repository's pull request template for every other section.

## Branches and worktrees

- Never switch branches in my checkout with `git switch` or `git checkout <branch>`. I may be
  working in it.
- When work needs a different branch (a new PR, a fix on another branch), use the EnterWorktree
  tool. It creates the worktree under `.claude/worktrees/`; pass `path` to re-enter one that
  already exists.
- Don't create sibling worktree folders yourself with `git worktree add`.
- Check `git branch --show-current` before editing, and install or link dependencies in a new
  worktree before running tests.

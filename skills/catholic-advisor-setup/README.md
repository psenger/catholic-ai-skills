<div align="center">

# catholic-advisor-setup

**One command that makes every Claude Code conversation in your project begin from within the Catholic tradition.**

[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](../../LICENSE)

[What it does](#what-it-does) • [Usage](#usage) • [What gets installed](#what-gets-installed) • [Reverting](#reverting)

</div>

---

Sometimes you want Claude Code to always respond as a Catholic theologian — not just when you remember to invoke a skill, but in every conversation, every explanation, every answer. That's what this skill does.

This skill is designed for directories that hold personal study or spiritual material: an **Obsidian vault**, a scripture study folder, a theological notes directory, or any personal knowledge base where you want all AI assistance to reflect Catholic teaching. Claude Code reads `CLAUDE.md` automatically whenever it opens a directory, so installing the persona there makes it permanently active for every conversation in that space.

Navigate into your vault or notes directory, then run:

```
/catholic-advisor-setup
```

The skill confirms the directory with you before making any changes, then writes the Catholic theologian persona into `CLAUDE.md`. From that point on, every Claude Code conversation in that directory answers from within the tradition — no slash command needed.

## Usage

First, open Claude Code from inside the directory you want to configure — your Obsidian vault, scripture study folder, or spiritual notes directory. Then:

```
/catholic-advisor-setup
```

The skill will confirm the directory with you before making any changes. It then reads your existing `CLAUDE.md` (or creates one), checks for duplicates, appends the persona, and confirms the exact file it changed.

## What it does

1. Looks for `CLAUDE.md` in your current working directory
2. Checks that the persona block isn't already installed — no duplicates
3. Appends the full Catholic theologian persona to `CLAUDE.md`
4. Reports the absolute path of the file it modified or created

After setup, every Claude Code conversation in that project will:

- Answer from within the Catholic theological tradition
- Cite Scripture using Bible Gateway NRSVCE (all 72 books, including deuterocanonicals)
- Link Catechism references paragraph-by-paragraph via Catholic Crossreference
- Link encyclicals and papal documents to vatican.va
- Include a source list at the end of every response
- Decline to answer without concrete evidence — if no source can be found, it says so

## What gets installed

The skill writes this block to your `CLAUDE.md`:

```markdown
## Catholic Theologian Persona

You are a Catholic theologian, apologist, and Catholic spiritual advisor, well versed
in Catholic dogma, Biblical facts and Scriptures, papal encyclicals, and Catholic lay authors.

Always include HTTP links to the sources you have used in your response...
```

The installed block includes the complete URL construction rules for both Scripture (Bible Gateway NRSVCE) and Catechism (Catholic Crossreference), so the persona is fully self-contained — it does not depend on any other skill being loaded.

## When to use this vs. `/catholic-advisor`

| | `/catholic-advisor` | `/catholic-advisor-setup` |
|---|---|---|
| How it works | Invoked per question | Installed once, always active |
| Best for | Occasional theological questions in any project | Projects built around Catholic content |
| Persistence | One invocation | Permanent for the project directory |

Use `/catholic-advisor` when you want on-demand theological answers anywhere. Use `/catholic-advisor-setup` when the entire project is Catholic in scope and you want every conversation to reflect that without having to think about it.

## Reverting

Remove the `## Catholic Theologian Persona` section from your `CLAUDE.md`. The skill makes no other changes to your project.

## Installation

**Via npx (recommended):**

```bash
npx skills add psenger/catholic-ai-skills
```

**Via the Claude Code marketplace:**

```bash
claude plugin install catholic-advisor-setup@psenger-catholic-skills-marketplace
```

**Manual — global (available in every project):**

```bash
cp -r . ~/.claude/skills/catholic-advisor-setup
```

**Manual — local (this project only):**

```bash
cp -r . .claude/skills/catholic-advisor-setup
```

---

> *"Go therefore and make disciples of all nations... teaching them to obey everything that I have commanded you."*
> — Matthew 28:19-20 (NRSVCE)

---

<div align="center">

**Set it once. Let every conversation begin from within the tradition.**

[Report an issue](https://github.com/psenger/catholic-ai-skills/issues) • [View all skills](../../README.md)

</div>

<div align="center">

# catholic-advisor

**Ask any question about the Catholic faith and receive a grounded, sourced answer rooted in the tradition.**

[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](../../LICENSE)

[Usage](#usage) • [What it knows](#what-it-knows) • [Sources](#sources) • [Installation](#installation)

</div>

---

If you've ever wished you had a knowledgeable friend — someone who could explain Catholic teaching on a hard question, point you to the right verse of Scripture, or cite the exact paragraph of the Catechism — this skill is that friend.

`catholic-advisor` answers theological questions as a Catholic theologian, apologist, and spiritual advisor. Every answer is grounded in official Church teaching and comes with verified links to its sources: Scripture on Bible Gateway (NRSVCE), Catechism paragraphs on Catholic Crossreference, and papal documents on vatican.va. If there is no source to cite, it says so plainly rather than speculating.

## Usage

```
/catholic-advisor What does the Church teach about purgatory?
```

```
/catholic-advisor Why do Catholics pray to the saints?
```

```
/catholic-advisor What is the difference between mortal and venial sin?
```

```
/catholic-advisor Explain the Real Presence in the Eucharist
```

```
/catholic-advisor Is the deuterocanonical book of Tobit considered Scripture?
```

Ask anything you would bring to a parish priest, a theologian, or a trusted mentor in the faith. The skill answers with clarity, charity, and a citation.

## What it knows

- **Catholic dogma and doctrine** — the Catechism of the Catholic Church, Church councils, and defined teachings
- **Sacred Scripture** — both Testaments, including the deuterocanonical books present in the Catholic Bible (all 72 books)
- **Papal encyclicals and apostolic documents** — from the full breadth of the tradition
- **Church Fathers** — the early Christian writers whose writings bear witness to apostolic teaching
- **Catholic lay authors and apologists** — Chesterton, Frank Sheed, Scott Hahn, Peter Kreeft, and others

Where the Church has not definitively spoken, the skill names that openly. It does not fill uncertainty with opinion dressed as doctrine.

## Sources

Every response ends with a source list. The skill constructs and verifies links using:

| What | Where |
|---|---|
| Scripture | [Bible Gateway NRSVCE](https://www.biblegateway.com) — New Revised Standard Version Catholic Edition, all 72 books |
| Catechism | [Catholic Crossreference](https://www.catholiccrossreference.online/catechism/) — paragraph-level deep links |
| Encyclicals and papal documents | [vatican.va](https://www.vatican.va) |
| Catholic Encyclopedia, Church Fathers | [newadvent.org](https://www.newadvent.org) |
| Doctrine summaries | [catholicculture.org](https://www.catholicculture.org) |

No fabricated URLs. If a source cannot be linked directly, it is cited by title and paragraph number.

## Installation

**Via npx (recommended):**

```bash
npx skills add psenger/catholic-ai-skills
```

**Via the Claude Code marketplace:**

```bash
claude plugin install catholic-advisor@psenger-catholic-skills-marketplace
```

**Manual — global (available in every project):**

```bash
cp -r . ~/.claude/skills/catholic-advisor
```

**Manual — local (this project only):**

```bash
cp -r . .claude/skills/catholic-advisor
```

---

> *"Always be prepared to give an answer to everyone who asks you to give the reason for the hope that you have. But do this with gentleness and respect."*
> — 1 Peter 3:15 (NRSVCE)

---

<div align="center">

**The faith has answers. This skill helps you find them.**

[Report an issue](https://github.com/psenger/catholic-ai-skills/issues) • [View all skills](../../README.md)

</div>

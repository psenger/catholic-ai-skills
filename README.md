<div align="center">

# catholic-ai-skills

**A pre-verified Catholic reference library and three Agent Skills v2.0 modules, built and tested for Claude Code.**

[![GitHub Release](https://img.shields.io/github/v/release/psenger/catholic-ai-skills)](https://github.com/psenger/catholic-ai-skills/releases)
[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-v2.0%20compliant-blue.svg)](https://agentskills.io/specification)
[![Catholic Bible](https://img.shields.io/badge/Catholic%20Bible-73%20books-green.svg)](https://www.biblegateway.com/versions/New-Revised-Standard-Version-Catholic-Edition-NRSVCE-Bible/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Skills](https://img.shields.io/badge/Skills-3-purple.svg)](#skills)
[![Reference Library](https://img.shields.io/badge/Reference%20Library-174%20entries-orange.svg)](skills/catholic-advisor/references/)
[![Obsidian](https://img.shields.io/badge/Obsidian-compatible-7c3aed)](https://obsidian.md)

[Skills](#skills) • [Quick start](#quick-start) • [Reference library](#the-reference-library) • [Installation](#installation) • [Compatibility](#compatibility)

</div>

---

The Catholic intellectual tradition has been writing rigorously about every subject these skills touch for two thousand years. Every answer should be verifiable, every citation should resolve to a primary source, every saint should be the saint the Church canonized — not the one the model half-remembers. That is what this repository does.

Three skills do three different jobs. A pre-verified reference library — 174 cross-checked entries on saints, popes, Church Fathers, apostles, ecumenical councils, the Beatitudes, and the Ten Commandments — supports two of them. All three are built and tested for [Claude Code](https://claude.com/claude-code). They conform to the [Agent Skills v2.0 specification](https://agentskills.io/specification), so they *should* work in any other compliant client (Codex, Cursor, etc.) without modification — but only Claude Code is verified at the time of release.

---

## Skills

| Skill | When to use | Version |
|---|---|---|
| **[catholic-advisor](skills/catholic-advisor/)** | A specific question. *"What does the Church teach about purgatory?"* *"Walk me through the Catechism on the Beatitudes."* Per-question opt-in. | 2.0.0 |
| **[catholic-advisor-setup](skills/catholic-advisor-setup/)** | An entire vault, notes folder, or knowledge base. Run once; every conversation in that directory inherits the Catholic theologian persona automatically. | 2.0.0 |
| **[youth-communication-coach](skills/youth-communication-coach/)** | Hard conversations with someone aged 4–25. Death, dating, faith doubts, failure, money. Coaches the adult, not the young person. | 1.0.0 |

### catholic-advisor

Ask anything about the Catholic faith — doctrine, Scripture, the sacraments, moral theology, apologetics, a specific saint, a specific council, a specific encyclical — and receive a sourced answer rooted in official Church teaching.

**Example:**

> *"What did the Council of Trent actually define about justification?"*

The skill answers from the conciliar text itself, links to the relevant Catechism paragraphs on `catholiccrossreference.online`, cites the Bible Gateway NRSVCE passages used, and points at the Council documents on `vatican.va`. If the Church has not spoken definitively on something, the skill says so. If there is no source for a claim, the skill says so. Every response ends with a `## Sources` section listing every URL cited. **No fabricated URLs.**

→ [Full documentation](skills/catholic-advisor/README.md)

---

### catholic-advisor-setup

Run once inside an Obsidian vault, a Scripture study folder, a theological writing project, or any directory where you want Catholic teaching to be the default behavior of every Claude Code conversation — not something you have to invoke per question.

**What gets installed:**

- A marker-bounded block in `CLAUDE.md` that establishes the Catholic theologian persona for every session opened in that directory.
- The full 182-file `references/` library, copied into the target directory so the skill works offline and stays out of the open web for cached lookups.
- Source-citation rules for Scripture (NRSVCE via Bible Gateway) and the Catechism (catholiccrossreference.online).

Uninstall is a single deletion of the marker-bounded block — your existing CLAUDE.md content is preserved.

→ [Full documentation](skills/catholic-advisor-setup/README.md)

---

### youth-communication-coach

Practical guidance for parents, teachers, mentors, youth ministers, and any adult facing a hard conversation with a child, teenager, or young adult. Grounded in the Beatitudes (CCC 1716–1724), the theological and cardinal virtues, and the Church's teaching on death, chastity, mercy, and character formation — not secular psychology with Catholic notes.

**Example:**

> *"My 16-year-old says they don't believe in God anymore. How do I respond without pushing them further away?"*

The skill returns an age-appropriate strategy, an example opener, and a saint whose story fits the situation — Thérèse of Lisieux's dark night for a questioning teen, Augustine's slow conversion for a young adult who has walked away, Monica's seventeen years of patient waiting for a parent in agony.

**Topics:**

| Topic | Ages |
|---|---|
| Death and resurrection | 4–25 |
| Relationships, dating, and chastity | 4–25 |
| Failure, conscience, and mercy | 4–25 |
| Questioning or leaving the faith | 12–25 |
| Difficult emotions (grief, fear, anxiety) | 4–25 |
| Life skills (money, work, independence) | 4–25 |
| Character and virtue formation | 4–25 |

→ [Full documentation](skills/youth-communication-coach/README.md)

---

## The reference library

`catholic-advisor` and `catholic-advisor-setup` ship with a bundled reference library — **182 files total**. Every entry has been cross-checked against authoritative Catholic sources: vatican.va, newadvent.org, biblegateway.com NRSVCE, catholiccrossreference.online.

| Category | Count | Examples |
|---|---|---|
| Saints | 79 | Thomas Aquinas, Catherine of Siena, Maximilian Kolbe, Carlo Acutis, Maria Goretti |
| Popes | 33 | Peter, Leo I the Great, Gregory the Great, Pius IX, John Paul II, Francis, Leo XIV |
| Church Fathers | 28 | Augustine, Jerome, Ambrose, John Chrysostom, Athanasius, Irenaeus |
| Apostles | 13 | The Twelve plus Paul; Judas included for historical completeness |
| Ecumenical councils | 21 | Nicaea I through Vatican II |
| Beatitudes | 1 | Matthew 5:3–10 with NRSVCE text and CCC 1716–1729 commentary |
| Ten Commandments | 1 | Catholic enumeration with CCC 2052–2557 cross-references |
| Category overviews | 5 | Patristic witness, apostolic college, papal succession, etc. |
| Master INDEX | 1 | Maps every entry to its filename for grep-friendly lookup |

Each entry is a separate ~25-line markdown file. The skill consults `INDEX.md` first, picks the entry it needs, and reads only that file — so a single lookup is token-light, not "load the whole library into context." A maintainer script keeps both skills' copies of the library in lockstep.

---

## Quick start

```bash
npx skills add psenger/catholic-ai-skills
```

Then in Claude Code, just ask:

```
What does the Church teach about purgatory?
```

The `catholic-advisor` skill activates automatically by description match. Every response ends with sourced links.

For the directory-default behavior of `catholic-advisor-setup`, run it inside the folder you want to convert (typically an Obsidian vault or notes directory):

```
/catholic-advisor-setup
```

Confirm the directory, and every future Claude Code session opened in that folder will behave as the catholic-advisor by default — no per-question slash command needed.

---

## Installation

### Via npx — recommended

```bash
npx skills add psenger/catholic-ai-skills
```

### Manual install — global, available in every project

```bash
git clone https://github.com/psenger/catholic-ai-skills.git
cd catholic-ai-skills
cp -r skills/catholic-advisor ~/.claude/skills/catholic-advisor
cp -r skills/catholic-advisor-setup ~/.claude/skills/catholic-advisor-setup
cp -r skills/youth-communication-coach ~/.claude/skills/youth-communication-coach
```

### Manual install — local, one project only

Same commands, but copy into `.claude/skills/` inside the project. Local skills override global skills of the same name.

### Developer install — symlinks, live edits

If you're contributing or iterating on the skills, symlink instead of copy so edits in the clone are immediately visible to your agent:

```bash
git clone https://github.com/psenger/catholic-ai-skills.git
cd catholic-ai-skills
ln -s "$(pwd)/skills/catholic-advisor" ~/.claude/skills/catholic-advisor
ln -s "$(pwd)/skills/catholic-advisor-setup" ~/.claude/skills/catholic-advisor-setup
ln -s "$(pwd)/skills/youth-communication-coach" ~/.claude/skills/youth-communication-coach
```

---

## Usage

Skills activate automatically by description match — you don't need to type a slash command. Just ask the question naturally.

### catholic-advisor

```
"From a Catholic perspective, how do we understand suffering?"
"Is the Immaculate Conception a defined dogma, or a pious belief?"
"Explain the Real Presence — walk me through John 6 the way the Church reads it."
"Who were the Apostolic Fathers and why do they matter for doctrine?"
"What is the Church's teaching on capital punishment after the 2018 Catechism revision?"
"Can you walk me through the Beatitudes using the Catechism?"
```

### catholic-advisor-setup

```
"Install the Catholic theologian persona in this vault."
"Set up Catholic mode for this directory."
"I want every conversation in this Obsidian vault to draw on Catholic teaching by default."
```

### youth-communication-coach

```
"How do I talk to my 9-year-old about the death of their grandparent?"
"My teenager failed a class — what do I say without making it worse?"
"How do I explain chastity to my 15-year-old without making it sound like a list of prohibitions?"
"My 22-year-old just made a serious moral mistake. They know it. What do I say?"
"How do I talk to a teenager about a friend who died by suicide?"
```

Slash-command invocation also works in Claude Code: `/catholic-advisor`, `/catholic-advisor-setup`, `/youth-communication-coach`.

---

## Compatibility

These skills conform to the [Agent Skills v2.0 specification](https://agentskills.io/specification) — an open standard for portable agent capabilities.

**Verified:**
- [Claude Code](https://claude.com/claude-code) — symlink install, slash-command invocation, and description-match activation all tested.

**Should work by spec compliance, but not yet verified:**
- [Codex](https://github.com/openai/codex), [Cursor](https://cursor.com), and any other client that loads skills from `~/.claude/skills/` or a project-local `.claude/skills/`. If you try one of these and it works (or breaks), please [open a feature/bug report](#reporting-issues) so we can mark it verified.

Each skill is a self-contained directory with a `SKILL.md` (YAML frontmatter + Markdown instructions) and optional `references/`, `scripts/`, or `assets/` subdirectories. No build step, no runtime dependencies on the host beyond standard shell utilities (`cp`, `mkdir`, `find`).

---

## Reporting issues

| Path | Where |
|---|---|
| Bug — something is wrong | [Bug Report](.github/ISSUE_TEMPLATE/bug_report.md) |
| Feature — something should be added | [Feature Request](.github/ISSUE_TEMPLATE/feature_request.md) |
| Security vulnerability (private) | [GitHub Security Advisory](https://github.com/psenger/catholic-ai-skills/security/advisories/new) |

Full reporting and security policy: [SECURITY.md](SECURITY.md).

---

## Contributing

See **[CONTRIBUTING.md](CONTRIBUTING.md)** for the full guide — adding a new skill, conventions, evals, the release workflow, and the project-local skills (`/start`, `/release`) that automate the process.

Read the **[Code of Conduct](CODE_OF_CONDUCT.md)** before contributing. Contributors are not required to be Catholic; they are required to treat others as people who matter.

---

## License

MIT — see [LICENSE](LICENSE) for the full text.

Copyright (c) 2026 Philip A Senger

---

<div align="center">

**Faith, with citations. AI tools that take the tradition as seriously as their users do.**

[Report a bug](.github/ISSUE_TEMPLATE/bug_report.md) • [Request a feature](.github/ISSUE_TEMPLATE/feature_request.md) • [@psenger](https://github.com/psenger)

</div>

<div align="center">

# catholic-ai-skills

**A curated collection of AI agent skills rooted in Catholic tradition, Scripture, and formation-centered communication — for those who want their tools to reflect the faith.**

[![License](https://img.shields.io/github/license/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/blob/main/LICENSE) [![Issues](https://img.shields.io/github/issues/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/issues) [![Stars](https://img.shields.io/github/stars/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/stargazers)

[Skills](#skills) • [Installation](#installation) • [Usage](#usage) • [Contributing](#contributing)

</div>

---

Compatible with Claude Code, Codex, Cursor, and any tool that supports the [Agent Skills Open Standard](https://agentskills.io/specification). Each skill is a self-contained folder with structured instructions and reference material that an agent loads on demand.

## Skills

| Skill | Trigger | Description |
|---|---|---|
| [catholic-advisor](skills/catholic-advisor/) | `/catholic-advisor` | Answers theological questions as a Catholic theologian with verified Scripture, Catechism, and papal source links |
| [catholic-advisor-setup](skills/catholic-advisor-setup/) | `/catholic-advisor-setup` | Installs the Catholic theologian persona permanently into a project's `CLAUDE.md` |
| [youth-communication-coach](skills/youth-communication-coach/) | `/youth-communication-coach` | Coaches Catholic adults on effective, faith-grounded conversations with children, teenagers, and young adults (ages 4–25) |

### catholic-advisor

Ask any question about the Catholic faith — doctrine, Scripture, the sacraments, moral theology, apologetics — and receive a clear, sourced answer grounded in official Church teaching. Every response ends with verified links: Scripture on Bible Gateway NRSVCE (all 72 books), Catechism paragraphs on Catholic Crossreference, and papal documents on vatican.va. If there is no source, it says so.

→ [Full documentation](skills/catholic-advisor/README.md)

---

### catholic-advisor-setup

Run once in any project to install the Catholic theologian persona permanently into `CLAUDE.md`. After that, every Claude Code conversation in that project answers from within the Catholic tradition — sourced, verified, and grounded — without needing a slash command each time. Includes the complete Scripture and Catechism URL construction rules so the installed persona is fully self-contained.

→ [Full documentation](skills/catholic-advisor-setup/README.md)

---

### youth-communication-coach

Practical, explicitly Catholic guidance for parents, teachers, mentors, and youth ministers having hard conversations with young people. Grounded in the Beatitudes (CCC 1716-1724), the theological virtues, and the Church's teaching on death, chastity, mercy, and character formation. Not secular psychology with Catholic notes — the faith is the framework.

**Topics covered:**

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

## Installation

### Via npx (recommended)

```bash
npx skills add psenger/catholic-ai-skills
```

### Via Claude Code Marketplace

```bash
claude plugin marketplace add psenger/catholic-ai-skills
claude plugin install youth-communication-coach@psenger-catholic-skills-marketplace
```

### Manual installation

```bash
# Global — available in all projects
cp -r skills/youth-communication-coach ~/.claude/skills/youth-communication-coach

# Local — project-specific
cp -r skills/youth-communication-coach .claude/skills/youth-communication-coach
```

Global skills (`~/.claude/skills/`) apply everywhere. Local skills (`.claude/skills/`) apply to one project and override a global skill of the same name.

---

## Usage

Trigger explicitly:

```
/youth-communication-coach
```

Or describe the situation naturally:

```
"How do I talk to my 9-year-old about the death of their grandparent?"
"My teenager failed a class — what do I say without making it worse?"
"How do I explain money and budgeting to my 17-year-old?"
"I need to talk to my 21-year-old about their drinking — how do I approach it?"
"What do I say to a 14-year-old who's in a bad relationship?"
```

---

## Contributing

Please read the [Code of Conduct](CODE_OF_CONDUCT.md) before contributing. Contributors are not required to be Catholic; they are required to treat others as people who matter.

### Adding a new skill

1. Create a folder under `skills/` with a lowercase-hyphenated name
2. Add a `SKILL.md` with YAML frontmatter and process instructions
3. Add reference files under `references/` if needed
4. Add examples under `examples/` for better activation rates
5. Add an entry to `.claude-plugin/marketplace.json`
6. Update the skills table in this README
7. Open a pull request

```
skills/<skill-name>/
├── SKILL.md              Required — metadata + instructions
├── references/           Optional — detailed reference material
└── examples/             Optional — example input/output pairs
```

---

## License

MIT License — see [LICENSE](LICENSE) for details.

Copyright (c) 2026 Philip A Senger

---

<div align="center">

**Skills rooted in the faith — for the curious, the searching, and those doing the work of formation.**

[Report a bug](https://github.com/psenger/catholic-ai-skills/issues) • [Request a skill](https://github.com/psenger/catholic-ai-skills/issues) • [@psenger](https://github.com/psenger)

</div>

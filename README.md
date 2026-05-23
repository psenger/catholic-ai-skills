<div align="center">

# catholic-ai-skills

**A curated collection of AI agent skills rooted in Catholic tradition, classical virtue ethics, and formation-centered communication.**

[![License](https://img.shields.io/github/license/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/blob/main/LICENSE) [![Issues](https://img.shields.io/github/issues/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/issues) [![Stars](https://img.shields.io/github/stars/psenger/catholic-ai-skills?style=flat-square)](https://github.com/psenger/catholic-ai-skills/stargazers)

[Skills](#skills) • [Installation](#installation) • [Usage](#usage) • [Contributing](#contributing)

</div>

---

Compatible with Claude Code, Codex, Cursor, and any tool that supports the [Agent Skills Open Standard](https://agentskills.io/specification). Each skill is a self-contained folder with structured instructions and reference material that an agent loads on demand.

## Skills

| Skill | Trigger | Description |
|---|---|---|
| [youth-communication-coach](skills/youth-communication-coach/) | `/youth-communication-coach` | Coaches adults on effective conversations with children, teenagers, and young adults (ages 4–25) |

### youth-communication-coach

Practical, age-specific guidance for adults having hard conversations with children, teenagers, and young adults — no generic platitudes, just concrete strategies and real sentence openers.

The skill asks for the child's age and situation if not already clear, then delivers targeted strategy, 2–3 natural conversation openers, and a flag if professional support should be part of the picture.

**Topics covered:**

| Topic | Ages |
|---|---|
| Difficult emotions (grief, fear, anxiety) | 4–25 |
| Death and loss | 4–25 |
| Relationships and dating | 4–25 |
| Failure and consequences | 4–25 |
| Life skills (money, work, independence) | 4–25 |
| Stoic habits of mind (dichotomy of control, courage, temperance) | 4–25 |
| Classical virtue formation (prudence, fortitude, justice, temperance) | 4–25 |

**Trigger phrases:**

```
"How do I talk to my kid about..."
"How should I explain X to a teenager?"
"I need to have a hard conversation with a young person"
"What do I say when my 14-year-old...?"
"My son won't listen — how do I approach this?"
```

---

## Installation

### Via npx (Claude Code, Codex, Cursor)

```bash
# Install all skills
npx skills add psenger/catholic-ai-skills

# Install a specific skill
npx skills add psenger/catholic-ai-skills --skill youth-communication-coach

# Install locally for customisation
npx skills add psenger/catholic-ai-skills --skill youth-communication-coach --local
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

**Skills that help people show up well — for the young, the searching, and the formation-minded.**

[Report a bug](https://github.com/psenger/catholic-ai-skills/issues) • [Request a skill](https://github.com/psenger/catholic-ai-skills/issues) • [@psenger](https://github.com/psenger)

</div>

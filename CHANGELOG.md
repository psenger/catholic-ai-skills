# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.2] - 2026-05-25

### Fixed

- **all skills** — Closed indirect prompt injection attack surface (OWASP LLM01 / W011). Removed unconditional `INDEX.md` reads and inlined entity slug tables directly in each SKILL.md; added data-only preamble to all 395 reference files; added trust-boundary framing to the `start` skill issue fetch; added defensive data-source instructions to all three skill SKILL.md files; and added SHA-256 integrity manifest generation to `catholic-advisor-setup` after install. ([#3](https://github.com/psenger/catholic-ai-skills/issues/3))

## [1.0.1] - 2026-05-24

### Fixed

- Added missing `argument-hint` front matter field to all three skills (`catholic-advisor`, `catholic-advisor-setup`, `youth-communication-coach`).
- Added missing `references` front matter field to all three skills, listing each skill's full reference library rather than only `INDEX.md`.

## [1.0.0] - 2026-05-24

### Added

- **youth-communication-coach** — Initial skill. Coaches adults on effective conversations with children, teenagers, and young adults (ages 4–25). Covers age-specific language strategies and example openers for difficult topics including relationships, dating, grief, failure, money, Stoic habits of mind, and classical virtue formation.

[Unreleased]: https://github.com/psenger/catholic-ai-skills/compare/v1.0.2...HEAD
[1.0.2]: https://github.com/psenger/catholic-ai-skills/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/psenger/catholic-ai-skills/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/psenger/catholic-ai-skills/commits/v1.0.0
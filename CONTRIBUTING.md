# Contributing to LocalMind

Thank you for your interest in contributing! This document explains how to get started.

---

## Development Setup

```bash
git clone https://github.com/yourusername/localmind
cd localmind
pip install -e ".[dev]"
pre-commit install
```

## Running Tests

```bash
make test
```

## Code Style

We use [ruff](https://docs.astral.sh/ruff/) for linting and formatting.

```bash
make lint        # check
make format      # auto-fix
make typecheck   # mypy
```

Pre-commit hooks run these automatically on every commit once you run `pre-commit install`.

## Submitting Changes

1. Fork the repository and create a feature branch: `git checkout -b feat/my-feature`
2. Write tests for any new functionality.
3. Ensure `make test` and `make lint` pass.
4. Open a Pull Request with a clear description of the change and why it's needed.

## Good First Issues

Look for issues labeled [`good-first-issue`](https://github.com/yourusername/localmind/issues?q=label%3Agood-first-issue) — these are self-contained and well-scoped.

## Areas Actively Seeking Contributions

- 🌐 **Web UI** — React frontend for the FastAPI server
- 📦 **New file formats** — DOCX, HTML, EPUB ingestion
- 🎛️ **Embedding models** — testing and benchmarking new sentence-transformers models
- 🐳 **Docker** — production-ready Docker image + compose setup
- 📊 **Eval harness** — RAGAS-style evaluation pipeline
- 🔌 **Integrations** — Obsidian, Notion, local email connectors

## Code of Conduct

Be kind and constructive. That's it.

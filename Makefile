.PHONY: install test lint typecheck benchmark clean help

help:
	@echo ""
	@echo "  LocalMind — Developer Commands"
	@echo ""
	@echo "  install     Install in editable mode with dev deps"
	@echo "  test        Run test suite with coverage"
	@echo "  lint        Lint with ruff"
	@echo "  typecheck   Type-check with mypy"
	@echo "  benchmark   Run retrieval benchmark (requires indexed docs)"
	@echo "  clean       Remove build artifacts and caches"
	@echo ""

install:
	pip install -e ".[dev]"
	pre-commit install

test:
	pytest tests/ -v --cov=localmind --cov-report=term-missing

lint:
	ruff check localmind tests
	ruff format --check localmind tests

typecheck:
	mypy localmind --ignore-missing-imports

format:
	ruff format localmind tests
	ruff check --fix localmind tests

benchmark:
	python scripts/benchmark.py --queries tests/fixtures/benchmark_queries.json

clean:
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name .mypy_cache -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name .ruff_cache -exec rm -rf {} + 2>/dev/null || true
	find . -name "*.pyc" -delete
	rm -rf dist/ build/ .coverage htmlcov/

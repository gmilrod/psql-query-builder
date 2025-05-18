# Contributing to PSQL Query Builder

This document provides guidelines and information for contributors to the PSQL Query Builder project.

## Project Structure

The project follows a modern Python package structure with a src-layout:

```
psql_query_builder/
├── src/                      # Source code directory
│   └── psql_query_builder/   # Package code
│       ├── __init__.py       # Package initialization
│       ├── __main__.py       # Entry point for direct execution
│       ├── cli.py            # Command-line interface
│       ├── db_agent.py       # Database interaction
│       ├── error_handler.py  # Error handling utilities
│       ├── prompt.py         # Prompt generation
│       ├── query_generator.py # SQL generation with OpenAI
│       └── schema_cache.py   # Schema caching utilities
├── tests/                    # Test directory
│   ├── __init__.py
│   └── test_basic.py         # Basic tests
├── .env.example              # Example environment variables
├── .gitignore                # Git ignore file
├── LICENSE                   # License file
├── MANIFEST.in               # Package manifest
├── README.md                 # User documentation
├── pyproject.toml            # Build system configuration
├── requirements.txt          # Package dependencies
└── setup.py                  # Package setup script
```

## Development Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/psql-query-builder.git
   cd psql-query-builder
   ```

2. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install in development mode:
   ```bash
   pip install -e .
   ```

4. Run tests:
   ```bash
   pytest
   ```

## Code Style

This project follows PEP 8 style guidelines. We use:
- Black for code formatting
- isort for import sorting

You can format your code with:
```bash
black src tests
isort src tests
```

## Building and Publishing

To build the package:
```bash
python -m build
```

To publish to PyPI:
```bash
python -m twine upload dist/*
```

## Pull Request Process

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests to ensure they pass
5. Submit a pull request

Thank you for contributing to PSQL Query Builder!

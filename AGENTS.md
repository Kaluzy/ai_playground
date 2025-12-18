# AGENTS.MD

## Instructions for AI Code Completion Agents

This file provides guidance for AI coding assistants like GitHub Copilot, Codex, and other code-completion tools working in this repository.

---

## Project Overview

**Repository**: ai_playground
**Purpose**: Experimental sandbox for AI development, prototyping, and learning
**Type**: Multi-experiment repository with diverse AI/ML projects

---

## Code Completion Guidelines

### General Principles
- **Clarity over cleverness**: Write readable, maintainable code
- **Self-documenting code**: Use descriptive names; comments explain "why" not "what"
- **Keep it simple**: Don't over-engineer solutions
- **Security first**: Avoid common vulnerabilities (injection, XSS, etc.)
- **Type safety**: Use type hints/annotations where applicable

### Code Style Preferences

#### Python
```python
# Use type hints
def process_data(input_text: str, max_length: int = 100) -> dict[str, Any]:
    """Process input text and return structured data.

    Args:
        input_text: The text to process
        max_length: Maximum length of processed output

    Returns:
        Dictionary containing processed results
    """
    pass

# Prefer list comprehensions when readable
results = [item.upper() for item in items if item.isalpha()]

# Use f-strings for formatting
message = f"Processing {count} items from {source}"
```

#### JavaScript/TypeScript
```javascript
// Use modern ES6+ syntax
const processData = async (inputText, options = {}) => {
    const { maxLength = 100, transform = 'uppercase' } = options;
    // Implementation
};

// Prefer const/let over var
const items = [...sourceArray];

// Use destructuring
const { data, error } = await fetchAPI(endpoint);
```

### Common Patterns

#### Error Handling
```python
# Python: Be specific about exceptions
try:
    result = risky_operation()
except ValueError as e:
    logger.error(f"Invalid value: {e}")
    raise
except Exception as e:
    logger.exception("Unexpected error")
    # Handle or re-raise
```

```javascript
// JavaScript: Use try/catch for async
try {
    const result = await apiCall();
    return result;
} catch (error) {
    console.error('API call failed:', error);
    throw new Error(`Failed to fetch data: ${error.message}`);
}
```

#### API Calls
```python
# Python: Use requests or httpx with proper error handling
import httpx

async def fetch_data(url: str) -> dict:
    async with httpx.AsyncClient() as client:
        response = await client.get(url, timeout=10.0)
        response.raise_for_status()
        return response.json()
```

```javascript
// JavaScript: Use fetch with error handling
async function fetchData(url) {
    const response = await fetch(url);
    if (!response.ok) {
        throw new Error(`HTTP ${response.status}: ${response.statusText}`);
    }
    return response.json();
}
```

#### Configuration
```python
# Python: Use environment variables for config
import os
from pathlib import Path

API_KEY = os.getenv('API_KEY', '')
BASE_DIR = Path(__file__).parent
DEBUG = os.getenv('DEBUG', 'false').lower() == 'true'
```

---

## File Organization

### Project Structure
```
ai_playground/
├── experiments/       # Individual experiments
│   └── experiment-name/
│       ├── README.md
│       ├── src/       # Source code
│       ├── tests/     # Tests
│       └── data/      # Data files (git-ignored)
├── prototypes/        # Prototype applications
├── examples/          # Reusable examples
└── docs/              # Documentation
```

### Naming Conventions
- **Directories**: `lowercase-with-hyphens/`
- **Python files**: `snake_case.py`
- **JavaScript files**: `camelCase.js` or `kebab-case.js`
- **Classes**: `PascalCase`
- **Constants**: `UPPER_SNAKE_CASE`
- **Functions/variables**: `snake_case` (Python), `camelCase` (JavaScript)

---

## Dependencies

### When Suggesting Imports

#### Python
```python
# Prefer standard library when possible
import json  # ✅ Standard library
import requests  # ✅ Common, well-maintained
import some_obscure_package  # ⚠️ Check if necessary

# Group imports: standard lib, third-party, local
import os
import sys

import numpy as np
import pandas as pd

from .utils import helper_function
```

#### JavaScript
```javascript
// Use ES6 imports
import { useState, useEffect } from 'react';
import axios from 'axios';

// Local imports use relative paths
import { helperFunction } from './utils';
```

### Common Libraries
- **Python**: numpy, pandas, requests, pytest, httpx, pydantic, openai, anthropic
- **JavaScript**: react, axios, lodash, jest, typescript
- **AI/ML**: langchain, llama-index, transformers, torch, tensorflow

---

## Testing

### Test File Naming
- Python: `test_*.py` or `*_test.py`
- JavaScript: `*.test.js` or `*.spec.js`

### Test Structure
```python
# Python: Use pytest
import pytest

def test_function_name():
    # Arrange
    input_data = "test"
    expected = "TEST"

    # Act
    result = process_function(input_data)

    # Assert
    assert result == expected
```

```javascript
// JavaScript: Use Jest
describe('functionName', () => {
    it('should process input correctly', () => {
        // Arrange
        const input = 'test';
        const expected = 'TEST';

        // Act
        const result = processFunction(input);

        // Assert
        expect(result).toBe(expected);
    });
});
```

---

## Security Considerations

### Always Validate Input
```python
# Don't trust user input
def process_user_input(user_input: str) -> str:
    # Sanitize and validate
    if not user_input or len(user_input) > 1000:
        raise ValueError("Invalid input length")

    # Escape for SQL/HTML as needed
    return user_input.strip()
```

### Environment Variables for Secrets
```python
# NEVER hardcode API keys
API_KEY = "sk-1234..."  # ❌ NO!

# Use environment variables
API_KEY = os.getenv('API_KEY')  # ✅ YES!
if not API_KEY:
    raise ValueError("API_KEY not set")
```

### Avoid Injection Vulnerabilities
```python
# SQL: Use parameterized queries
cursor.execute("SELECT * FROM users WHERE id = ?", (user_id,))  # ✅

# Command injection: Validate/sanitize input
subprocess.run(['ls', validated_path], check=True)  # ✅
```

---

## Documentation

### Docstrings
- Use for all public functions/classes
- Include parameters, return values, and examples
- Keep them up-to-date with code changes

### README Files
Every experiment/prototype should have:
- Purpose/goal
- Installation instructions
- Usage examples
- Known limitations

### Comments
- Explain complex algorithms
- Note important edge cases
- Describe "why" not "what"
- Keep them concise

---

## Anti-Patterns to Avoid

❌ **Don't**:
- Hardcode credentials or secrets
- Ignore error handling
- Write overly complex one-liners
- Use deprecated APIs
- Create deep nesting (> 3 levels)
- Leave commented-out code
- Use generic names like `data`, `info`, `temp`

✅ **Do**:
- Use environment variables for config
- Handle errors gracefully
- Write clear, simple code
- Use current best practices
- Keep functions focused and small
- Remove unused code
- Use descriptive names

---

## Context-Aware Suggestions

When providing code completions:
1. **Check existing patterns** in the file/project
2. **Match the style** already in use
3. **Consider the context** - is this a test? a util? an API?
4. **Suggest appropriate imports** based on project dependencies
5. **Follow the conventions** outlined in docs/CONTEXT.md

---

## Notes for Code Completion

- **Experiment context matters**: Code in `experiments/llm-testing/` will differ from `prototypes/web-app/`
- **Check nearby code**: Match existing patterns and style
- **Import suggestions**: Only suggest libraries that make sense for the task
- **Security awareness**: Flag potential security issues in suggestions
- **Keep it simple**: The first working solution is often the best solution

---

*Last Updated: 2025-12-18*

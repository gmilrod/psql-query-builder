#!/bin/bash
# Cleanup script for PSQL Query Builder

# Set the base directory
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Cleaning up old package structure..."

# Remove old package directory
if [ -d "$BASE_DIR/psql_query_builder" ]; then
    echo "Removing old package directory: $BASE_DIR/psql_query_builder"
    rm -rf "$BASE_DIR/psql_query_builder"
else
    echo "Old package directory not found, skipping."
fi

# Remove egg-info directory
if [ -d "$BASE_DIR/psql_query_builder.egg-info" ]; then
    echo "Removing egg-info directory: $BASE_DIR/psql_query_builder.egg-info"
    rm -rf "$BASE_DIR/psql_query_builder.egg-info"
else
    echo "Egg-info directory not found, skipping."
fi

# Remove __pycache__ directories
find "$BASE_DIR" -type d -name "__pycache__" -exec rm -rf {} +

echo "Cleanup complete!"
echo "To reinstall the package in development mode, run:"
echo "pip install -e ."

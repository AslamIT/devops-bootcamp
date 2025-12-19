#!/bin/bash
# Yeh ek project setup script hai.

# --- VARIABLES ---
PROJECT_NAME=$1  # Pehla argument jo script run karte time denge

# --- SCRIPT LOGIC ---
echo "=================================="
echo "Project Setup Script is Running..."
echo "=================================="

# Check karo ki user ne project name diya ya nahi
if [ -z "$PROJECT_NAME" ]; then
  echo "Error: Please provide a project name."
  echo "Usage: ./project_setup.sh <your_project_name>"
  exit 1
fi

echo "Creating project folder: $PROJECT_NAME"
mkdir "$PROJECT_NAME"

echo "Navigating into the project folder..."
cd "$PROJECT_NAME"

echo "Creating sub-folders: src, docs, tests"
mkdir src docs tests

echo "Creating a README.md file..."
touch README.md
echo "# Welcome to $PROJECT_NAME" > README.md

echo "Project structure created successfully!"
echo "Final structure:"
ls -l

echo "=================================="
echo "Script Finished."
echo "=================================="

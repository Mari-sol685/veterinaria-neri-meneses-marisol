# Makefile for veterinaria-move project

# Define the Move compiler
MOVE_COMPILER = move

# Define the source and test directories
SRC_DIR = sources
TEST_DIR = tests

# Define the output directory for compiled modules
OUTPUT_DIR = build

# Default target
all: build test

# Build the Move project
build:
	$(MOVE_COMPILER) build $(SRC_DIR) -o $(OUTPUT_DIR)

# Run unit tests
test:
	$(MOVE_COMPILER) test $(TEST_DIR)

# Clean the build artifacts
clean:
	rm -rf $(OUTPUT_DIR)/*

.PHONY: all build test clean
# Define variables for common commands
NODE_MODULES = node_modules/.bin
TEST_CMD = $(NODE_MODULES)/mocha
LINT_CMD = $(NODE_MODULES)/eslint
PRETTIFY_CMD = $(NODE_MODULES)/prettier

# Default target
.PHONY: all
all: test lint

# Test target to run tests
.PHONY: test
test:
    $(TEST_CMD) --reporter spec

# Lint target to run ESLint
.PHONY: lint
lint:
    $(LINT_CMD) .

# Prettify target to format code
.PHONY: prettify
prettify:
    $(PRETTIFY_CMD) --write '**/*.js'

# Build target (can be customized as needed)
.PHONY: build
build:
    @echo "Building project..."

# Code review target
.PHONY: review
review: lint test
    @echo "Code review complete. Linting and tests passed!"

# Clean target to remove any generated files
.PHONY: clean
clean:
    rm -rf node_modules

.PHONY: start

# Start target (runs the Node.js application)
start:
    npm start

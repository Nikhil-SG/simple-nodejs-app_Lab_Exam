# Makefile for simple-nodejs-app
# Define variables
APP_NAME = simple-nodejs-app
PORT = 3000
# Commands
install:
	@echo "Installing dependencies..."
	npm install
start:
	@echo "Starting the application..."
	npm start
stop:
	@echo "Stopping the application..."
	@pkill -f "node.*$(APP_NAME)" || true
lint:
	@echo "Running linter..."
	npm run lint
test:
	@echo "Running tests..."
	npm test
build:
	@echo "Building the application..."
	npm run build
clean:
	@echo "Cleaning up..."
	@rm -rf node_modules
	@rm -rf dist
# Combined commands
restart: stop start
# Default command
.PHONY: install start stop lint test build clean restart

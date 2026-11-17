CC = cobc
CFLAGS = -x -I copybooks
SRC_DIR = src
BUILD_DIR = bin
DATA_DIR = data

.PHONY: all clean init build run test-copybooks

all: init build

init:
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(DATA_DIR)

build: init
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/main $(SRC_DIR)/main.cbl
	@echo "[OK] Core Banking compilation completed."

run: build
	@./$(BUILD_DIR)/main

test-copybooks: init
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/test_copybooks $(SRC_DIR)/test_copybooks.cbl
	@./$(BUILD_DIR)/test_copybooks
	@echo "[OK] All copybooks validated successfully."

clean:
	@rm -rf $(BUILD_DIR)/*
	@echo "[OK] Artifacts cleanup completed."
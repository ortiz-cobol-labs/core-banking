CC = cobc
CFLAGS = -x -I copybooks
SRC_DIR = src
BUILD_DIR = bin
DATA_DIR = data

.PHONY: all clean init build run test-copybooks sanitize

all: init sanitize build

init:
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(DATA_DIR)

sanitize:
	@find $(SRC_DIR) copybooks -type f -exec sed -i 's/\xC2\xA0/ /g' {} +
	@find $(SRC_DIR) copybooks -type f -exec sed -i 's/\r$$//' {} +
	@echo "[OK] Source files sanitized (LF normalized & non-breaking spaces removed)."

build: init sanitize
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/corebank $(SRC_DIR)/corebank.cbl
	@echo "[OK] Core Banking compilation completed."

run: build
	@./$(BUILD_DIR)/corebank

test-copybooks: init sanitize
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/test_copybooks $(SRC_DIR)/test_copybooks.cbl
	@./$(BUILD_DIR)/test_copybooks
	@echo "[OK] All copybooks validated successfully."

clean:
	@rm -rf $(BUILD_DIR)/*
	@echo "[OK] Artifacts cleanup completed."
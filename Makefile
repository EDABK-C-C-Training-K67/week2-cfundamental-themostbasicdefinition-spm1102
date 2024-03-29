CC := gcc

ifeq ($(OS),Windows_NT)
GRADER_DIR := grader/win
EXE_EXTENSION := .exe
GRADER_EXTENSION := .ps1
GRADER_COMMAND := powershell.exe
BUILD_DIR_FLAG := "-ErrorAction SilentlyContinue | Out-Null"
else
GRADER_DIR := grader/linux
EXE_EXTENSION := .out
GRADER_EXTENSION := .sh
GRADER_COMMAND :=
BUILD_DIR_FLAG :=
ALLOW_PERMISSION_COMMAND := chmod +x
endif

TASKS := task2_1 task2_2 task3_1 task3_2 task3_3 task3_4 task3_5 task3_6 task3_7 task3_8 task3_9

all: 
	@set -e; \
	for task in $(TASKS); do \
		echo "Running $$task..."; \
		$(MAKE) $$task || true; \
	done

clean:
	@$(GRADER_COMMAND) rm -r build

define task_template
$(1): src/$(1).c
	@-$(GRADER_COMMAND) mkdir build $(BUILD_DIR_FLAG) || true
	@echo "Compiling $(1)..."
	@$(CC) -Wall src/$(1).c -o build/$(1)$(EXE_EXTENSION)
	@echo "Running $(1)..."
	@$(GRADER_COMMAND) ./$(GRADER_DIR)/$(1)$(GRADER_EXTENSION)
endef


$(foreach task, $(TASKS), $(eval $(call task_template,$(task))))
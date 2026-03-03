# POSIX Makefile for notes.sh

PREFIX ?= $(HOME)/.local/bin
INSTALL_DIR = $(PREFIX)

.PHONY: install test uninstall help

install:
	@mkdir -p $(INSTALL_DIR)
	@cp notes.sh $(INSTALL_DIR)/notes.sh
	@chmod +x $(INSTALL_DIR)/notes.sh
	@echo "Installed notes.sh to $(INSTALL_DIR)/"

uninstall:
	@rm -f $(INSTALL_DIR)/notes.sh

test:
	@./test.sh

help:
	@echo "Targets:"
	@echo "  install   - Install notes.sh to ~/.local/bin/"
	@echo "  uninstall - Remove installed notes.sh"
	@echo "  test      - Run test suite"
	@echo "  help      - Show this help"

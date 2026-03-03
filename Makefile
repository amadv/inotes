# POSIX Makefile for notes.sh

PREFIX ?= $(HOME)/.local/bin
INSTALL_DIR = $(PREFIX)

.PHONY: install test uninstall help

install:
	@mkdir -p $(INSTALL_DIR)
	@cp inotes.sh $(INSTALL_DIR)/inotes.sh
	@chmod +x $(INSTALL_DIR)/inotes.sh
	@echo "Installed inotes.sh to $(INSTALL_DIR)/"

uninstall:
	@rm -f $(INSTALL_DIR)/inotes.sh

test:
	@./test.sh

help:
	@echo "Targets:"
	@echo "  install   - Install notes.sh to ~/.local/bin/"
	@echo "  uninstall - Remove installed notes.sh"
	@echo "  test      - Run test suite"
	@echo "  help      - Show this help"

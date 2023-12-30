#
# Makefile for Go Antiphreeze
# @version 0.1.1 [2023-12-31]
# http://github.com/iods/go-antiphreeze
# Author: Rye Miller <rye@drkstr.dev>
# Copyright (c) 2023, Rye Miller
#
# @TODO:
#   - Add some tests to the application
#   - Add build and install scripts
#   - Add docker support to run the application

SHELL              := /bin/bash
PROJECT            := go-antiphreeze
VERSION            := 0.1.0

WHOAMI             ?= $(shell whoami)
CWD                := $(shell pwd)
BIN_ANTIPHREEZE    := antip
BIN_ANTIPHREEZECTL := antipctl
INSTALL_LOCATION   := /usr/local/bin
BUILD_OUTPUT_DIR   := $(CWD)/build
BINARY_LOCATION    := $(BUILD_OUTPUT_DIR)/$(BIN_NAME)
MODULE             := $(shell go list -m)
CMD_MODULE         := $(MODULE)/cmd/$(BIN_NAME)

antip:
	@go run cmd/antiphreeze/main.go
	@echo $(WHOAMI)
	@echo $(CWD)

antipctl:
	@go run cmd/antiphreezectl/main.go
	@echo $(WHOAMI)
	@echo $(CWD)
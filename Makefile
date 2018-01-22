#
# Copyright 2017 HyperHQ Inc.
#
# SPDX-License-Identifier: Apache-2.0
#

PREFIX := /usr
LIBEXECDIR := $(PREFIX)/libexec

TARGET = kata-proxy
SOURCES := $(shell find . 2>&1 | grep -E '.*\.go$$')

VERSION_FILE := ./VERSION
VERSION := $(shell grep -v ^\# $(VERSION_FILE))
COMMIT_NO := $(shell git rev-parse HEAD 2> /dev/null || true)
COMMIT := $(if $(shell git status --porcelain --untracked-files=no),${COMMIT_NO}-dirty,${COMMIT_NO})
VERSION_COMMIT := $(if $(COMMIT),$(VERSION)-$(COMMIT),$(VERSION))
ARCH := $(shell uname -m)

$(TARGET): $(SOURCES)
	go build -o $@ -ldflags "-X main.version=$(VERSION_COMMIT)"

test:
ifeq ($(shell [ ${ARCH} = "x86_64" -o ${ARCH} = "amd64" ] && echo true ),true)
	go test -v -race -coverprofile=coverage.txt -covermode=atomic
else
	go test -v -coverprofile=coverage.txt -covermode=atomic
endif

clean:
	rm -f $(TARGET)

install:
	install -D $(TARGET) $(LIBEXECDIR)/kata-containers/$(TARGET)

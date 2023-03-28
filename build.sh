#!/bin/bash

CGO_ENABLED=0 go build -v -a -ldflags="-w -s" \
    -gcflags=-trimpath="$(pwd)" \
    -asmflags=-trimpath="$(pwd)" \
    -o ./goversion .

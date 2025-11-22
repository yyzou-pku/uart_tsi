#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

FESVR_REPO_DIR="$SCRIPT_DIR/riscv-fesvr"
UART_TSI_DIR="$SCRIPT_DIR/uart_tsi_src"

cd "$FESVR_REPO_DIR" && mkdir -p build && cd build && ../configure && make
cd "$UART_TSI_DIR" && make && cp ./uart_tsi ../
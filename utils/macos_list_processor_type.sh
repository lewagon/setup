#!/bin/bash

# the goal of this script is to tell Mac students whether their late 2020 machine
# uses an Intel or Apple Silicon chip

# this script is aimed at running on MacOS only
# ⚠️ the output of this script will not make sense if ran on a Windows or Linux machine

arch_name="$(uname -m)"

if [ "${arch_name}" = "x86_64" ]; then
    if [ "$(sysctl -in sysctl.proc_translated)" = "1" ]; then
        echo "Your computer uses Apple Silicon (Rosetta) 🌟"
    else
        echo "Your computer has an Intel processor 🤖"
    fi
elif [ "${arch_name}" = "arm64" ]; then
    echo "Your computer uses Apple Silicon 🌟"
else
    echo "Unknown architecture: ${arch_name}, call a TA 🤔"
fi

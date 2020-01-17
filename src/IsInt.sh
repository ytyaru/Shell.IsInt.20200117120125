#!/usr/bin/env bash
IsInt() { test 1 -eq $1 > /dev/null 2>&1 || expr $1 - 1 > /dev/null 2>&1; }

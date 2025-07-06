#!/usr/bin/awk -f
# Copyright (C) 2025 Simon Nicolussi
FNR == NR { known = known $0 }
FNR != NR && $1 ~ "^[" known "]+$"  # or $2 for simplified

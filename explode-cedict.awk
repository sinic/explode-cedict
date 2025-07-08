#!/usr/bin/awk -f
# Copyright (C) 2025 Simon Nicolussi
FNR == NR { known = known $0 }
function either(r) { return $1 ~ r || $2 ~ r }
FNR != NR && either("^[" known "]+$")

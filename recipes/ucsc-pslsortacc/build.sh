#!/bin/bash
mkdir -p "$PREFIX/bin"
export MACHTYPE=x86_64
export BINDIR=$(pwd)/bin
export L="${LDFLAGS}"
mkdir -p "$BINDIR"
(cd kent/src/lib && make)
(cd kent/src/htslib && make)
(cd kent/src/jkOwnLib && make)
(cd kent/src/hg/lib && make)
(cd kent/src/hg/pslSortAcc && make)
cp bin/pslSortAcc "$PREFIX/bin"
chmod +x "$PREFIX/bin/pslSortAcc"

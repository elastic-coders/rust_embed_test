#!/usr/bin/env bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`/target/release
exec python -c "import test_rust; test_rust.process()"

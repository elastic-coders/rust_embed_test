# Rust embedding test

a toy example of hot to embed rust code into python.

Directory layout:

- `./rust` contains the rust code that complies to a unix shared library
- `./cython` contains the cython example binding
- `./ctypes` contains the ctypes example integration (alternative to cython)

## Requirements

- Rust:

  - cargo `0.15`
  - rustc `1.14`

- Python 3.5+
- Cython 0.25.2+


## Building

Rust:

- activate the cargo env with (optional)

        source ~/.cargo/env
    
- run
    
        cd rust && cargo build --release ; cd -

- add library to library search path

        export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`/rust/target/release/

Cython

    cd cython && ./build.sh ; cd -


## Testing

Make sure you add library to library search path

    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`/rust/target/release/

Ctypes version:

    cd ctypes && python embed.py; cd -

Cython version:

    cd cython && python -c "import embed; embed.test()" ; cd -

#!/bin/bash
echo "building c source from cython" &&
    cython embed.pyx &&
    echo "locating python header files" &&
    EXTRA_INCLUDES=`python3.5-config --includes` &&
    echo "buidling python extension module" &&
    gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing -I $EXTRA_INCLUDES -o embed.so -L`pwd`/../rust/target/release/ embed.c -lembed &&
    echo "All OK"


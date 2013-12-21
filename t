#! /bin/sh
# Run tests for a straight-forward Pants "tests" target.
#
# Ex:
#     $ t finagle/finagle-core

if [[ $# < 1 ]]; then
  echo "[error] no test target provided"
  exit 1
fi

target=$1
shift

./pants goal test "$target:tests" --test-junit-jvmargs="-DSKIP_FLAKY=1" $@

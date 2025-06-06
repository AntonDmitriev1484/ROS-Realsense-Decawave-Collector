#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <delay_in_seconds> <command> [args...]"
  exit 1
fi

DELAY=$1
shift

for ((i=DELAY; i>0; i--)); do
  echo "Starting in $i..."
  sleep 1
done

echo "Running: $@"
exec "$@"

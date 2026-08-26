#!/usr/bin/env -S just --justfile
# https://just.systems

set fallback
set quiet

[private]
default:
  just --list

alias c := console
console:
  bin/console

outdated:
  bundle outdated || true

sync:
  bundle install

test:
  rake test SEED=42

update:
  bundle update

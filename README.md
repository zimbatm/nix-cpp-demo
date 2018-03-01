# Nix C++ demo

This little project demonstrates how to use Nix and CMake together to manage a C++ project.

## Requirements

A Linux machine with [Nix][nix] installed. That's it.

## Responsibilities

* CMake: build the project incrementally during development
* Nix: pull external dependencies

## Development

Run `nix-shell` at the root the project to load all the external depedencies. Then invoke `cmake` to build the project.

### Updating sources

Use `./nix/update-src path/to/package.nix` to pull the latest version of a package. Eg: `./nix/update-src ./nix/cppkafka.nix`.

## Production

Run `nix-build` to produce the release artifacts.

[nix]: https://nixos.org/nix/

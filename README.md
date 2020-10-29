# Inking

Playing around with the [ink!](https://github.com/paritytech/ink) Smart Contract implementation for [Substrate](https://substrate.io).

## Useful commands

```sh
# Start a nix shell
nix-shell

# Install the Canvas Substrate node
cargo install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.0 --force

# Install the ink! CLI
cargo install cargo-contract --vers 0.7.0 --force

# Running tests
cargo test

# Formatting files
cargo fmt

# Create a new ink! project
cargo contract new <name>
```

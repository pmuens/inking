# Inking

Playing around with the [ink!](https://github.com/paritytech/ink) Smart Contract implementation for [Substrate](https://substrate.io).

## Useful commands

```sh
# Install the Canvas Substrate node
cargo +nightly-2020-10-06 install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.0 --force

# Install the ink! CLI
cargo +nightly-2020-10-06 install cargo-contract --force

# Running tests
cargo +nightly-2020-10-06 test

# Formatting files
cargo +nightly-2020-10-06 fmt

# Create a new ink! project
cargo +nightly-2020-10-06 contract new <name>

# Clean build
cargo +nightly-2020-10-06 clean

# Build the contract
cargo +nightly-2020-10-06 contract build

# Generate contract metadata (the contract ABI)
cargo +nightly-2020-10-06 contract generate-metadata
```

# List available recipes.
default:
    @just --list

# Build the crate.
build:
    cargo build

# Format Rust sources.
fmt:
    cargo fmt

# Check formatting without modifying files.
fmt-check:
    cargo fmt --check

# Check that the crate compiles.
check:
    cargo check

# Run tests, including documentation tests.
test:
    cargo test

# Run Clippy with warnings treated as errors.
lint:
    cargo clippy --all-targets -- -D warnings

# Run all repository validation checks.
ci: fmt-check check test lint

# Build API documentation.
doc:
    cargo doc --no-deps

# Remove build artifacts.
clean:
    cargo clean

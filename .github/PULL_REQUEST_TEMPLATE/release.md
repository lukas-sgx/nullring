# Release `vX.Y.Z`

## Summary
> What changed and why.

## Changes
### New features
-
### Bug fixes
-
### Breaking changes
-
### Kernel-specific
- [ ] ABI / syscall changes
- [ ] Memory layout changes (linker script, page tables)
- [ ] New drivers / arch support

## Checklist
- [ ] Conventional Commits verified on `main`
- [ ] `Cargo.toml` / workspace versions bumped
- [ ] `cargo clippy` / `cargo fmt --check` clean
- [ ] `cargo build --target <target>.json -Z build-std` clean
- [ ] Tests passing (host + QEMU)
- [ ] Boots on target hardware/emulator
- [ ] CI green on `stable` and `nightly`

## Rollback
> If broken post-merge: publish a patch `vX.Y.Z+1` and `cargo yank --vers X.Y.Z` if already released.

## Links
- Issue: #
- Docs:
- Target(s):
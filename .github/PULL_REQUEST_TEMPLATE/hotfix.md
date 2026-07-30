# Hotfix: `<short description>`

## Summary
> What broke, and what this PR fixes.

## Severity
- [ ] Critical — kernel panic / boot failure / memory corruption
- [ ] High — breaks core functionality, no workaround

## Root Cause
> Brief explanation of why the bug happened.

## Fix
-

## Checklist
- [ ] Fix verified on QEMU
- [ ] Fix verified against the original bug report (#)
- [ ] Regression test added
- [ ] `cargo build --target <target>.json -Z build-std` clean locally
- [ ] `cargo clippy` / `cargo fmt --check` clean
- [ ] CI green on `stable`

## Rollback
> If broken post-merge: revert this PR and re-open the original issue.

## Links
- Issue: #
- Original bug report: #
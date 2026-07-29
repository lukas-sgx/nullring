<div align="center">
  <a href="https://github.com/lukas-sgx/nullring">
    <img src="https://github.com/lukas-sgx/nullring/blob/main/assets/nullring-logo.png?raw=true" alt="Logo" height="180" style="border-radius: 10px">
  </a>

  <h3 align="center">nullring</h3>

  [![Release Status](https://img.shields.io/github/actions/workflow/status/lukas-sgx/nullring/release.yml?style=for-the-badge)](https://github.com/lukas-sgx/nullring/actions)
  [![License](https://img.shields.io/github/license/lukas-sgx/nullring?style=for-the-badge)](./LICENSE)

  <p align="center">
    A bare-metal x86_64 kernel written in Rust, with no dependency on a host OS.
    <br />
    <a href="https://github.com/lukas-sgx/nullring/tree/main/docs"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/lukas-sgx/nullring">View Demo</a>
    &middot;
    <a href="https://github.com/lukas-sgx/nullring/issues/new?template=bug-report.yml">Report Bug</a>
    &middot;
    <a href="https://github.com/lukas-sgx/nullring/issues/new?template=feature-request.yml">Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

**nullring** is a bare-metal kernel for the x86_64 architecture, written in Rust (`no_std`). The goal is to build a minimal operating system piece by piece: memory management, interrupts, a scheduler, and basic drivers — without relying on a host OS.

### Built With

[![Rust][Rust-shield]][Rust-url]
[![Assembly][ASM-shield]][ASM-url]
[![QEMU][QEMU-shield]][QEMU-url]
[![Linker Script][LinkerScript-shield]][LinkerScript-url]

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- **Stable** Rust toolchain
  ```sh
  rustup toolchain install stable
  rustup component add rust-src --toolchain stable
  rustup component add llvm-tools-preview --toolchain stable
  ```
- [QEMU](https://www.qemu.org/) (for `qemu-system-x86_64` emulation)
- `bootimage` (or `limine`, depending on the bootloader used)
  ```sh
  cargo install bootimage
  ```

### Installation

1. Clone the repo
```sh
git clone https://github.com/lukas-sgx/nullring.git
cd nullring
```
2. Build the kernel
```sh
cargo build
```
3. Generate the bootable image
```sh
cargo bootimage
```

## Usage

Run the kernel in QEMU:
```sh
cargo run
```

Or directly via the generated image:
```sh
qemu-system-x86_64 -drive format=raw,file=target/x86_64-nullring/debug/bootimage-nullring.bin
```

*For more advanced examples, please refer to the [Documentation](https://github.com/lukas-sgx/nullring/tree/main/docs).*

## Roadmap

- [ ] Minimal boot & VGA text mode
- [ ] Interrupt handling (IDT, CPU exceptions)
- [ ] Memory management (paging, heap allocator)
- [ ] Multitasking scheduler
- [ ] Basic drivers (keyboard, disk)
- [ ] Minimal filesystem

See the [open issues](https://github.com/lukas-sgx/nullring/issues) for a full list of proposed features (and known issues), and [CHANGELOG.md](./CHANGELOG.md) for release history.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

See [CONTRIBUTING.md](./CONTRIBUTING.md) for setup instructions, commit conventions, and the PR process.

### Top contributors:

<a href="https://github.com/lukas-sgx/nullring/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=lukas-sgx/nullring" alt="contrib.rocks image" />
</a>

## License

Distributed under the MIT License. See [LICENSE](./LICENSE) for more information.

## Contact

Lukas Soigneux - lukas.soigneux@epitech.eu

## Acknowledgments

* [OSDev Wiki](https://wiki.osdev.org/) - Essential resource for OS development
* [Writing an OS in Rust (Philipp Oppermann)](https://os.phil-opp.com/) - Excellent step-by-step guide
* [Intel SDM](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html) - Official x86_64 documentation

[Rust-shield]: https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white
[Rust-url]: https://www.rust-lang.org/
[ASM-shield]: https://img.shields.io/badge/-Assembly-bf7805?style=for-the-badge&logo=arm&logoColor=white
[ASM-url]: https://www.felixcloutier.com/x86/
[QEMU-shield]: https://img.shields.io/badge/-QEMU-FF6600?style=for-the-badge&logo=qemu&logoColor=white
[QEMU-url]: https://www.qemu.org/
[LinkerScript-shield]: https://img.shields.io/badge/-Linker%20Script-A42E2B?style=for-the-badge&logo=gnu&logoColor=white
[LinkerScript-url]: https://sourceware.org/binutils/docs/ld/Scripts.html
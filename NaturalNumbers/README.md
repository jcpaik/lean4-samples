# Dependencies

The included command line snippets for installation are for MacOS only

- Ninja build system
  - `brew install ninja`
- `mdbook` for compiling HTML book
  - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh` for Rust
  - `cargo install mdbook`
- [LeanInk](https://github.com/leanprover/LeanInk) library
  - `git clone https://github.com/leanprover/LeanInk`
  - `cd LeanInk`
  - `lake build`
  - and copy the `leanInk` binary in `build/bin` to local PATH
- A specific version of [Alectryon](https://leanprover.github.io/lean4/doc/dev/mdbook.html)
  - `python3 -m pip install git+https://github.com/Kha/alectryon.git@typeid`

After all this, run `ninja`. The weirdly long pause in compilation is expected: 
it is downloading yet another copy of Lean for the project.

For some unknown reason, I can't get LeanInk to work unless I set the default
version of elan toolchain right manually

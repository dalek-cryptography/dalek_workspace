# The `dalek` workspace

This workspace exists to provide a unified way to build documentation for all of the dalek-cryptography crates.

To update all crates to the latest version, run
```sh
make update
```

To build the external documentation, run
```sh
make doc
```

To build the internal documentation, run
```sh
make doc-internal
```

## Previewing changes

The default branches of all of the dalek-cryptography crates should
point to the latest release, or the latest version for unreleased
crates.  To preview changes to docs for one of the crates, edit the
`.gitmodules` file to specify the branch with the desired changes,
then run `make update` / `make doc`.

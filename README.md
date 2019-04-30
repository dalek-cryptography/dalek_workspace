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

## Auto-deploying documentation builds

This repository is configured to auto-build-and-deploy docs on every commit to
the master branch.  To trigger an update, run `make update` in a local checkout
to update all crates, commit that change, and submit a PR to merge that commit
into the `master` branch.  When the PR is merged, Travis will deploy
automatically.

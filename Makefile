# Set two flags for rustdoc: first, html-in-header to load katex,
# second, cfg feature="nightly" to work around cargo doc --no-deps not passing
# the nightly feature (without which docs don't build).
export RUSTDOCFLAGS = --html-in-header curve25519-dalek/docs/assets/rustdoc-include-katex-header.html --cfg feature="nightly"

update:
	git submodule init
	git submodule update --recursive --remote

doc:
	# This is a huge hack to work around Cargo's broken workspace features.
	# It sets curve as the "root crate" or something so that the --features apply to curve;
	# the features for the *other* crates are set manually using RUSTDOCFLAGS.
	# This means that curve25519-dalek can pick up packed_simd and build.
	cargo doc --no-deps --all --manifest-path curve25519-dalek/Cargo.toml  --features "nightly simd_backend"

doc-internal:
	cargo doc --no-deps --all --manifest-path curve25519-dalek/Cargo.toml  --features "nightly simd_backend" --document-private-items

clean:
	cargo clean

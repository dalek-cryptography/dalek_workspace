# Set two flags for rustdoc: first, html-in-header to load katex,
# second, cfg feature="nightly" to work around cargo doc --no-deps not passing
# the nightly feature (without which docs don't build). however because this is
# just sticking it on rather than configuring the crate, this breaks crates
# that have features that depend on nightly (like ed25519-dalek), so those are
# disabled for now.
export RUSTDOCFLAGS = --html-in-header curve25519-dalek/docs/assets/rustdoc-include-katex-header.html --cfg feature="nightly"

update:
	git submodule update --recursive --remote

doc:
	cargo doc --no-deps

doc-internal:
	cargo doc --no-deps --document-private-items


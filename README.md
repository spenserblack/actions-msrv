# actions-msrv

[![Publish Docker Image](https://github.com/spenserblack/actions-msrv/actions/workflows/publish.yml/badge.svg)](https://github.com/spenserblack/actions-msrv/actions/workflows/publish.yml)

Get the Minimum Supported Rust Version of your project

This is essentially a wrapper around [cargo-msrv](https://github.com/foresterre/cargo-msrv).
Many thanks to the maintainers of that crate!

## Usage

### Basics

```yaml
steps:
  - uses: actions/checkout@v2
  - uses: spenserblack/actions-msrv@<commit-ish>
    id: get-msrv
  - run: 'echo "MSRV is ${{ steps.get-msrv.outputs.msrv }}"'
```

### Setting MSRV in `Cargo.toml`

```yaml
- uses: spenserblack/actions-msrv@<commit-ish>
  with:
    set: true
```

## [Examples](./examples/.github/workflows/examples.yml)

*__NOTE__ You might want to look up [reusable workflows][reusing wf docs]
to easily use the examples.*

[reusing wf docs]: https://docs.github.com/en/actions/learn-github-actions/reusing-workflows

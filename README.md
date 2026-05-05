# SPIN Model Checker Assignment

Boilerplate code for an assignment on formal model checking using the [SPIN model checker](https://spinroot.com/spin/whatispin.html).

## Overview

In this assignment, you will model the behavior of a [microwave oven](microwave_model.png) in **Promela** (the modeling language used by SPIN) and verify safety properties using **LTL (Linear Temporal Logic)**.

Your task is to complete [microwave.pml](microwave.pml) by:
1. Implementing the microwave process behavior inside `Microwave()`
2. Writing the LTL safety property (`ltl safety { ... }`)

## Resources

- [SPIN Official Site](https://spinroot.com/)
- [SPIN Documentation](https://spinroot.com/spin/Man/index.html)
- [Promela Language Reference](https://spinroot.com/spin/Man/promela.html)

## Installation

### Linux / macOS

Install SPIN via your package manager or from source:

```bash
# Ubuntu / Debian
sudo apt-get install spin

# macOS (Homebrew)
brew install spin
```

Or download a binary from the [SPIN releases page](https://github.com/nimble-code/Spin/releases).

### Verify Installation

```bash
spin -V
```

## Running the Model Checker

After completing `microwave.pml`, use one of the following commands:

**Check all LTL properties:**
```bash
spin -run microwave.pml
```

**Check a single property (e.g. `safety`):**
```bash
spin -search -ltl safety microwave.pml
```

**Check a single property and show only the error count:**
```bash
spin -search -ltl safety microwave.pml | grep "errors:"
```

A result of `errors: 0` means the property holds; `errors: 1` means it was violated.

If a property is violated, SPIN will produce a counterexample trail. Replay it with:

```bash
spin -t -p microwave.pml
```

**(Optional) Run a simulation to observe behavior step by step:**
```bash
spin -p -l -g microwave.pml
```

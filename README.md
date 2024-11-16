# fmedia-nix

A Nix flake to package [fmedia](https://github.com/stsaz/fmedia), a fast audio player, recorder, and converter for Windows, Linux, and Android.

This repository provides a Nix-based setup to build and use fmedia, leveraging Nix flakes for a reproducible environment.


## Requirements

- [Nix](https://nixos.org/download.html) with flakes enabled. Follow the [Nix Flakes guide](https://nixos.wiki/wiki/Flakes) for instructions on enabling flakes.

## Usage

### Open a Development Shell

To open a development shell with all necessary dependencies:

```bash
nix develop
```

This will provide you with a shell environment where fmedia is available.

### Run fmedia

Once inside the development shell, you can run fmedia using the following command:

```bash
fmedia
```

### Install fmedia

To install fmedia into your system or user profile, run:

```bash
nix profile install github:cammellos/fmedia-nix
```

## Repository Structure

- **`flake.nix`**: Defines the Nix flake setup, including the devShell.
- **`default.nix`**: The fmedia derivation for building and installing the software.


## Learn More

- [fmedia on GitHub](https://github.com/stsaz/fmedia)
- [Nix Flakes Documentation](https://nixos.wiki/wiki/Flakes)

## License

This repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.

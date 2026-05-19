# dotfiles

[@quartercastle](https://github.com/quartercastle) personal configuration for macOS and linux distributions.

## Install

```bash
./bootstrap
```

Copies all files to your home directory with `rsync`, switches shell to Zsh, and sources the config.

Use `-f` or `--force` to skip the confirmation prompt.

## Docker

```bash
docker build -t quartercastle .
docker run -it --rm quartercastle
```

Builds an Ubuntu-based image with the dotfiles installed, useful for testing.

## License

MIT

# Dotfiles

These dotfiles use maintained using [gnu
stow](https://www.gnu.org/software/stow/) which in simple words is just a
symlink manager. It creates symlinks with paths to the *target* directory based
on the contents of the current directory.

## Installation

> **Note**: First use `stow` in dry run mode with `-n` flag for your own **safety**.

- Get dotfiles

    ```
    git clone https://github.com/samyakahuja/dotfiles.git
    cd stow
    ```

    Note that you need to be in the `stow` directory.

- Unlink Everything

    ```
    stow -vDt ~ *
    ```
    
    This command runs in verbose mode (`-v`) and unstows/unlinks (`-S`) symlinks
    from current directory to `$HOME` (`~`).

- Link Everything

    ```
    stow -vSt ~ *
    ```

    This command runs in verbose mode (`-v`) and stows/links (`-S`) symlinks
    from current directory to `$HOME` (`~`).

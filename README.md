# Dotfiles

## Installation

> Note: First use `stow` in dry run mode with `-n` flag for your own safety.

- Get dotfiles

    ```
    git clone https://github.com/samyakahuja/dotfiles.git
    cd stow
    ```

- Unlink Everything

    ```
    stow -vnDt ~ *
    ```

    ```
    stow -vDt ~ *
    ```

- Link Everything

    ```
    stow -vnSt ~ *
    ```

    ```
    stow -vSt ~ *
    ```

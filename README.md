# nvim-config

My personal Neovim configuration, managed with `lazy.nvim`.

## Prerequisites

- [Neovim](https://neovim.io/) (v0.8.0 or higher is recommended for `lazy.nvim`)
- [Git](https://git-scm.com/)
- A Nerd Font (optional, but recommended for UI icons)
- `ImageMagick` (optional, for `image.nvim` plugin)

## Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/ingB3/nvim-config.git
    ```

2.  Navigate to the directory:
    ```bash
    cd nvim-config
    ```

3.  Run the setup script to link the configuration to your `~/.config/nvim`:
    ```bash
    ./load_from_repository.sh
    ```
    (Use `./load_from_repository.fish` if you are using the fish shell.)

4.  Start Neovim:
    ```bash
    nvim
    ```

On the first launch, `lazy.nvim` will automatically install all the plugins.

## Notes

- The `image.nvim` plugin requires `ImageMagick` to be installed for image viewing functionality.
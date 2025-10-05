# fateens-nvim

<!--toc:start-->

- [fateens-nvim](#fateens-nvim)
  - [Inspiration](#inspiration)
  - [Quirks](#quirks)
  - [Keybindings](#keybindings)
  <!--toc:end-->

Welcome to **fateens-nvim**!  
This is a Neovim configuration created by myself, Fateen. This is more of a personal config file setup, but if you ever feel like using this configuration of mine, feel free to clone it via GitHub and put it in the `~/.config/nvim` directory, and let it rip!  
By the way, you can also fork it if you want to customize on top of my own config. (Feel free to leave a star too if you want 😬)

## Inspiration

I have taken its inspiration from the Neovim tutorial series created by Typecraft, and I am looking forward to adding a few more functional and quality-of-life (QOL) changes whenever I get the time and the energy to do so.

## Quirks

1. Telescope
2. Treesitter
3. Catppuccin as theme
4. Lualine
5. Neotree
6. Auto-completion
7. Pop-up terminal (like in VSCode, there is an option to pop up a terminal, almost similar to that)
8. Customizable dashboard at the start
9. LSP configuration (not perfect, but workable, thinking about changing to something else someday)
10. Lazy as plugin manager
11. Code Formatting

## Keybindings

- **Alt+T** &rarr; Neotree toggle
- **Alt + Arrow keys** &rarr; Traverse between Neotree and the main file
- **Ctrl + T** &rarr; Open and close terminal
- **Ctrl + F** &rarr; Find files within directory
- **Ctrl + G** &rarr; Live grepy
- **Ctrl + B** &rarr; Find files within the buffer
- **Alt + F** &rarr; Code Formatting (Refactoring)
- **Ctrl + Space** &rarr; Start selection and expand to next node and scope
- **Backspace** &rarr; Shrink selection
- **H, D, A** (Shift + the letter) &rarr; LSP actions for hover, code definition, and code action
- **Ctrl + u** and **Ctrl + d** &rarr; Scroll documentation up and down by 4 lines
- **Ctrl + l** &rarr; Triggers completion popup
- **Ctrl + e** &rarr; Aborts completion
- **Enter (CR)** &rarr; Confirms the selected completion

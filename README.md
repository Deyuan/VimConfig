# vim-config

## Vim Installation
* About vim binary
  * Check installed vim features with `vim --version`. Some plugins may depend on vim features such as `+conceal`, `+python`, `+lua`
  * https://www.vim.org/download.php

## Vim Plugin Management
* About vim-plug ([repo](https://github.com/junegunn/vim-plug))
  * Minimalist vim plugin manager

## List of Vim Plugins
* vim-sensible ([repo](https://github.com/tpope/vim-sensible))
  * Basic setup as a starting point
* vim-colors-solarized ([repo](https://github.com/altercation/vim-colors-solarized))
  * Color theme
* vim-airline ([repo](https://github.com/vim-airline/vim-airline), [themes](https://github.com/vim-airline/vim-airline-themes))
  * Status line and buffer/tab line
* nerdtree ([repo](https://github.com/scrooloose/nerdtree))
  * File explorer and bookmarking
* vim-commentary ([repo](https://github.com/tpope/vim-commentary))
  * Commenting/uncommenting source code
* vim-surround ([repo](https://github.com/tpope/vim-surround))
  * Modifying quotes, brackets and parentheses
* fzf.vim ([fzf](https://github.com/junegunn/fzf), [fzf.vim](https://github.com/junegunn/fzf.vim))
  * Fuzzy finding various things
* vim-easymotion ([repo](https://github.com/easymotion/vim-easymotion))
  * Fast way of moving cursor

## Vim Key Bindings and Shortcuts

### Built-in

| Keys or Command | Category | Function |
| :--- | :--- | :--- |
| `h`/`j`/`k`/`l`, `←`/`↓`/`↑`/`→` | move | move left/down/up/right |
| `b`/`w`/`e`, `C-←`/`→` | move | move by words |
| `C-w s`/`v`, `:sp`, `:vs` | window | split window horizontally/vertically |
| `C-w h`/`j`/`k`/`l` | window | move to another window |
| `C-w H`/`J`/`K`/`L` | window | move window and change horizontal/vertical split |
| `C-w =` | window | adjust window size equally |
| `C-w +`/`-`/`<`/`>`, `:res`, `:vert res` | window | adjust window size |
| `C-w _`/`\|` | window | adjust current window to maximum height/width |
| `:close` | window | close window |
| `:bn`, `:bp` | buffer | next/previous buffer |
| `:bd` | buffer | close buffer |
| `v`/`V`/`C-v` | visual | enter char/line/block visual mode  |
| `o` | visual | move focus to the other end of visual selection |
| `:help <topic>` | misc | help |
| `q<letter>` ... `q` ... `@<letter>` | misc | record to a register then replay |
| `:so %` | misc | source current buffer |
| `:vert` | misc | vertical split prefix |
| `:term`, `:vert term` | misc | open a terminal |
| `C-\ N` | misc | change a terminal to normal mode |

### From Plugins

| Keys or Command | Category | Function |
| :--- | :--- | :--- |
| `ds<char>` | vim-surround | delete surrounding char |
| `cs<char><surround>` | vim-surround | change surrounding char |
| `ys<text-object><surround>` | vim-surround | add surrounding to a text object |
| `gc` | vim-commentary | toggle code comment |


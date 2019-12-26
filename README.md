# vim-config

## Vim Installation
* About vim binary
  * Check installed vim features with `vim --version`. Some plugins may depend on vim features such as `+conceal`, `+python`, `+lua`
  * https://www.vim.org/download.php

## Vim Plugin Management
* About vim-plug
  * Minimalist vim plugin manager
  * https://github.com/junegunn/vim-plug

## List of Vim Plugins
* vim-sensible ([repo](https://github.com/tpope/vim-sensible))
  * Basic setup as a starting point
* vim-colors-solarized ([repo](https://github.com/altercation/vim-colors-solarized))
  * Color theme
* vim-airline ([repo](https://github.com/vim-airline/vim-airline), [themes](https://github.com/vim-airline/vim-airline-themes))
  * Status line and buffer line
* nerdtree ([repo](https://github.com/scrooloose/nerdtree))
  * File explorer and bookmarking
* vim-commentary ([repo](https://github.com/tpope/vim-commentary))
  * Commenting/uncommenting source code
* vim-surround ([repo](https://github.com/tpope/vim-surround))
  * Modifying quotes, brackets and parentheses
* fzf ([fzf](https://github.com/junegunn/fzf), [fzf.vim](https://github.com/junegunn/fzf.vim))
  * Fuzzy finding various things
* easymotion ([repo](https://github.com/easymotion/vim-easymotion))
  * Fast way of moving cursor

## Vim Key Bindings and Shortcuts

### Builtin

| Keys or Command | Category | Function |
| --- | --- | --- |
| h/j/k/l | move | move left/down/up/right |
| C-w H/J/K/L | window | move window and change horizontal/vertical split |
| q\<letter\> ... q ... @\<letter\> || record to a register then replay |
| :help \<topic\> || help |
| :bd | buffer | close buffer |
| :so % || source current buffer |

### From Plugins

| Keys or Command | Category | Function |
| --- | --- | --- |
| ds\<char\> | vim-surround | delete surrounding char |
| cs\<char\>\<surround\> | vim-surround | change surrounding char |
| ys\<text-object\>\<surround\> | vim-surround | add surrounding to a text object |
| gc | vim-commentary | toggle code comment |


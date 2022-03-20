<div align="center">

     ____   __ __  _____  _____    ___  ____    ___
    |    \ |  T  T|     ||     |  /  _]|    \  /   \
    |  o  )|  |  ||   __j|   __j /  [_ |  D  )Y     Y
    |     T|  |  ||  l_  |  l_  Y    _]|    / |  O  |
    |  O  ||  :  ||   _] |   _] |   [_ |    \ |     |
    |     |l     ||  T   |  T   |     T|  .  Yl     !
    l_____j \__,_jl__j   l__j   l_____jl__j\_j \___/


#### Open recently closed buffers, just like in your web browser.

</div>

## Dependencies

- neovim 0.7.0+ required

## Install

* vim-plug
```vim
Plug 'JavierPoduje/buffero'
```

* packer.nvim
```vim
use("JavierPoduje/buffero")
```

## Configuration

* Require
```vim
require('buffero')
```

* Use
```vim
vim.api.nvim_set_keymap(
	'n',
	'<Leader>bl',
	':lua require("buffero").open_last_closed_buffer()<CR>',
	{ noremap = true, silent = true }
)
```

<div align="center">

# Buffero
#### Open recently closed buffers, just like in your web browser.

</div>

https://user-images.githubusercontent.com/32601980/160250812-05870800-05b0-47e8-bd14-cade33dca841.mp4


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

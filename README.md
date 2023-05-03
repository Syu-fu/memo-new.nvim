# Memo-New.nvim

## Overview

Memo-New.nvim is a Neovim plugin that serves as a Lua wrapper for the `memo new` command provided by the [mattn/memo](https://github.com/mattn/memo) .  
As it is written in Lua, it can only be used with Neovim.

## Installation

```lua
require("lazy").setup({
  {
    "Syu-fu/memo-new.nvim",
    config = function()
      require("memo-new").setup({
        memodir = '~/path/to/your/memo/directory',
      })
    end
  },
}
```

## Usage

The plugin provides a `MemoNew` command that creates a new memo file using the `mattn/memo` CLI tool's `memo new` command.  
When you run this command, it prompts you to enter a title for the new memo.  
After the memo file is created, it is opened in Neovim for editing.

## Configuration

You can configure the plugin by passing options to the `setup()` function:

```lua
require('memo-new').setup({
  memodir = '~/path/to/your/memo/directory',
})
```

By default, the memodir option is set to '~/memo'.

return {
  "rose-pine/neovim",     -- repo name
  name = "rose-pine",     -- optional plugin name (for easy reference)
  config = function()     -- code to run after plugin loads
    vim.cmd("colorscheme rose-pine")
  end
}

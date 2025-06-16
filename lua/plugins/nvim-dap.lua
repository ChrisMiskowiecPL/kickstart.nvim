return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'

      dap.adapters.coreclr = {
        type = 'executable',
        command = vim.fn.expand '$HOME/AppData/Local/netcoredbg/netcoredbg.exe',
        args = { '--interpreter=vscode' },
      }
    end,
  },
}

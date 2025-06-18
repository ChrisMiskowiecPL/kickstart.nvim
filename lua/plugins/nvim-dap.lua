return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'

      dap.adapters.coreclr = {
        type = 'executable',
        command = 'netcoredbg',
        args = { '--interpreter=vscode' },
      }
    end,
  },
}

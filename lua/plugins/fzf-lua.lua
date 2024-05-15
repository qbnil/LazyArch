return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      winopts = {
        fullscreen = false,
        height = 0.6,
        width = 0.7,
        border = "rounded",
        preview = {
          vertical = "up:60%", -- up|down:size
          --  flip_columns   = 100,             -- #cols to switch to horizontal on flex
          --  horizontal     = 'right:50%',     -- right|left:size
          --hidden         = 'hidden',      -- hidden|nohidden
          layout = "vertical",
        },
      },
      grep = {
        keymap = { fzf = { ["alt-s"] = "select-all+accept" } },
        -- actions = { ["default"] = { actions.file_edit_or_qf } },
      },
    })
    vim.keymap.set(
      "n",
      "<leader>\\",
      "<cmd>lua require('fzf-lua').buffers({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fsh",
      "<cmd>lua require('fzf-lua').search_history({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>ff",
      "<cmd>lua require('fzf-lua').builtin({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>hf",
      "<cmd>lua require('fzf-lua').command_history({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fc",
      "<cmd>lua require('fzf-lua').commands({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fj",
      "<cmd>lua require('fzf-lua').jumps({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fk",
      "<cmd>lua require('fzf-lua').keymaps({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fh",
      "<cmd>lua require('fzf-lua').help_tags({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fwn",
      "<cmd>lua require('fzf-lua').live_grep_native({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fr",
      "<cmd>lua require('fzf-lua').resume({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fp",
      "<cmd>lua require('fzf-lua').grep_project({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>fwt",
      "<cmd>lua require('fzf-lua').grep_cword({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>ll",
      "<cmd>lua require('fzf-lua').quickfix({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    -- lsp
    vim.keymap.set(
      "n",
      "<leader>lr",
      "<cmd>lua require('fzf-lua').lsp_references({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>lgd",
      "<cmd>lua require('fzf-lua').lsp_definitions({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>ld",
      "<cmd>lua require('fzf-lua').lsp_declarations({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>li",
      "<cmd>lua require('fzf-lua').lsp_implementations({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>ls",
      "<cmd>lua require('fzf-lua').lsp_document_symbols({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>ltd",
      "<cmd>lua require('fzf-lua').lsp_typedefs({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    vim.keymap.set(
      "n",
      "<leader>lgn",
      "<cmd>lua require('fzf-lua').diagnostics_document({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>"
    )
    -- git
    vim.keymap.set(
      "n",
      "<leader>gb",
      "<cmd>lua require('fzf-lua').git_branches({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>gf",
      "<cmd>lua require('fzf-lua').git_files({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>",
      { silent = true }
    )
    vim.keymap.set({ "n" }, "<leader>;", function()
      require("fzf-lua").files({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache' --exclude '.android' --exclude 'undodir' --exclude '.npm' --exclude '.mozilla' --exclude '.codeium' --exclude 'systemd' --exclude 'libreoffice' --exclude 'xournalpp' --exclude '.gnupg' --exclude 'gtk-2.0' --exclude 'gtk-3.0' --exclude 'mps-youtube' --exclude 'skypeforlinux' --exclude 'spotify' --exclude 'go' --exclude '.pki' --exclude 'mps' --exclude 'youtube-viewer' --exclude 'dconf' --exclude 'tpm' --exclude '.Xauthority' --exclude '.cargo' --exclude '.rustup' --exclude 'venv' --exclude 'functions' --exclude 'vscode-php-debug' --exclude 'node_modules' --exclude '.symfony5'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = { ["--color"] = "gutter:-1" },
      })
    end, { silent = true, desc = "Fuzzy complete file" })
    vim.keymap.set({ "n" }, "<leader>fbl", function()
      require("fzf-lua").lines({
        fzf_opts = { ["--color"] = "gutter:-1" },
      })
    end, { silent = true, desc = "Find b-lines" })
    vim.keymap.set({ "n" }, "<leader>fl", function()
      require("fzf-lua").blines({
        fzf_opts = { ["--color"] = "gutter:-1" },
      })
    end, { silent = true, desc = "Find lines" })
  end,
}

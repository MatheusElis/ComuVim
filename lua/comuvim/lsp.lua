-- LSP Capabilities Setup (blink.cmp integration)

local function get_capabilities()
  -- Check if blink.cmp is available
  local has_blink, blink = pcall(require, "blink.cmp")

  if has_blink and blink.get_lsp_capabilities then
    -- Merge default capabilities with blink.cmp capabilities
    return vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), blink.get_lsp_capabilities(), {
      -- Additional capabilities can be added here
      workspace = {
        fileOperations = {
          didRename = true,
          willRename = true,
        },
      },
    })
  else
    -- Fallback to default capabilities if blink.cmp is not available
    return vim.lsp.protocol.make_client_capabilities()
  end
end

-- LSP Keymaps

local function setup_keymaps(bufnr)
  local function map(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = "LSP: " .. desc, silent = true })
  end
  -- Navigation
  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
  map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
  map("n", "gr", vim.lsp.buf.references, "Go to references")
  map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")

  -- Information
  map("n", "K", vim.lsp.buf.hover, "Hover documentation")
  map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help")
  map("i", "<C-k>", vim.lsp.buf.signature_help, "Signature help")

  -- Code actions
  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
  map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
  map("n", "<leader>cf", function()
    vim.lsp.buf.format({ async = true })
  end, "Format buffer")

  -- Diagnostics
  map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
  map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
  map("n", "<leader>cd", vim.diagnostic.open_float, "Show diagnostic")
  map("n", "<leader>cl", vim.diagnostic.setloclist, "Diagnostics to loclist")

  -- Workspace
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder")
  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, "List workspace folders")
end

local keymap = vim.keymap -- for conciseness
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_buffers_by_client_id(args.data.client)

    if not client then
      return
    end

    setup_keymaps(bufnr)
    local capabilities = get_capabilities()
    vim.lsp.config("*", { capabilities = capabilities })
  end,
})

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
  },
})

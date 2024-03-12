require("marcel.lazy")
require("java").setup()

-- Configure LSP
-- Java
lspconfig = require("lspconfig")
lspconfig.jdtls.setup({})

-- Python lsp:
-- https://jdhao.github.io/2023/07/22/neovim-pylsp-setup/
-- pip install python-lsp-server[all]
-- pip install python-lsp-isort
-- pip install pylsp-mypy
-- install python-lsp-black
lspconfig.pylsp.setup {
on_attach = custom_attach,
settings = {
    pylsp = {
    plugins = {
        -- formatter options
        black = { enabled = true },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        -- linter options
        pylint = { enabled = true, executable = "pylint" },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        -- type checker
        pylsp_mypy = { enabled = true },
        -- auto-completion options
        jedi_completion = { fuzzy = true },
        -- import sorting
        pyls_isort = { enabled = true },
    },
    },
},
flags = {
    debounce_text_changes = 200,
},
capabilities = capabilities,
}

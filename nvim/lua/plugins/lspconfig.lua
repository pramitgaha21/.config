return {
        'neovim/nvim-lspconfig',
        dependencies = {
                "hrsh7th/cmp-nvim-lsp", },
        config = function()
                local lspconfig = require('lspconfig')

                local capabilities = require('cmp_nvim_lsp').default_capabilities()

                -- lua
                lspconfig.lua_ls.setup({
                        capabilities = capabilities,
                })

                -- bash
                lspconfig.bashls.setup({
                        capabilities = capabilities
                })

                -- svelte
                lspconfig.svelte.setup({
                        capabilities = capabilities
                })

                -- typescript
                lspconfig.tsserver.setup({
                        capabilities = capabilities
                })

                -- zig
                lspconfig.zls.setup {

                        capabilities = capabilities,

                        -- the following line can be removed if ZLS is in your PATH
                        cmd = { '/Users/pramitgaha/zls/zig-out/bin/zls' },
                        -- There are two ways to set config options:
                        --   - edit your `zls.json` that applies to any editor that uses ZLS
                        --   - set in-editor config options with the `settings` field below.
                        --
                        -- Further information on ZLS config options:
                        -- https://github.com/zigtools/zls#configuration-options
                        settings = {
                                zls = {
                                        -- the following line can be removed if Zig is in your PATH
                                        zig_exe_path = '/Users/pramitgaha/zls/zig-out/bin/zls',
                                }
                        }
                }
        end,
}

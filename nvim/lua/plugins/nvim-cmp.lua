return {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
                'neovim/nvim-lspconfig',
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                {
                        "L3MON4D3/LuaSnip",
                        -- follow latest release.
                        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                        -- install jsregexp (optional!).
                        build = "make install_jsregexp"
                }
        },
        config = function()
                local cmp = require("cmp");

                require("luasnip.loaders.from_vscode").lazy_load()
                cmp.setup({
                        completion = {
                                completeopt = "menu,menuone,preview",
                        },
                        snippet = {
                                expand = function(args)
                                        require('luasnip').lsp_expand(args.body)
                                end
                        },
                        mapping = cmp.mapping.preset.insert({
                                ["<C-p>"] = cmp.mapping.select_prev_item(),
                                ["<C-n>"] = cmp.mapping.select_next_item(),
                                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                                ["<C-Space>"] = cmp.mapping.complete(),
                                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                                ['<C-d>'] = cmp.mapping.scroll_docs(4),

                        }),
                        sources = cmp.config.sources({
                                { name = "nvim_lsp" },
                                { name = "buffer" },
                                { name = "luasnip" },
                                { name = "path" },
                        }),
                })
        end
}

return {
        "stevearc/conform.nvim",
        config = function()
                local conform = require("conform")

                conform.setup({
                        formatters_by_ft = {
                                lua = { "stylua" },
                                json = { "prettier" },
                                zig = { "zigfmt" },
                                bash = { "shellharden" },
                        },
                        format_on_save = {
                                lsp_fallback = true,
                                async = false,
                                timeout_ms = 1000,
                        },
                })
        end,
}

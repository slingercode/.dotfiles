return {
    "datsfilipe/vesper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('vesper').setup({
            italics = {
                comments = false,
                keywords = false,
                functions = false,
                strings = false,
                variables = false,
            },
        })

        vim.cmd("colorscheme vesper")
    end
}


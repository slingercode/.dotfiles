return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', 
    opts = {
        ensure_installed = {
            'asm',
            'bash',
            'c',
            'diff',
            'html',
            'lua',
            'luadoc',
            'markdown',
            'markdown_inline',
            'query',
            'vim',
            'vimdoc',
            'zig',
            'javascript',
            'typescript',
            'tsx',
            'rust',
            'python',
            'make',
            'json',
            'hlsl',
            'go',
            'glsl',
            'dockerfile',
            'css',
            'cpp',
            'cmake',
            'astro'
        },
        auto_install = true,
        indent = { enable = true, disable = { } },
        highlight = {
            enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            -- If you are experiencing weird indenting issues, add the language to
            -- the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = { },
        },
    }
}


return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', 
    opts = {
        auto_install = true,
        indent = { enable = true, disable = { } },
        highlight = {
            enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            -- If you are experiencing weird indenting issues, add the language to
            -- the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = { },
        },
        ensure_installed = {
            'astro',
            'asm',
            'bash',
            'c',
            'cmake',
            'cpp',
            'css',
            'dockerfile',
            'diff',
            'glsl',
            'go',
            'hlsl',
            'html',
            'javascript',
            'json',
            'lua',
            'luadoc',
            'make',
            'markdown',
            'markdown_inline',
            'nix',
            'python',
            'rust',
            'tsx',
            'typescript',
            'vim',
            'vimdoc',
            'zig'
        },
    }
}

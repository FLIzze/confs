return {
    "tpope/vim-fugitive",
    config = function()
        -- Keymaps for git commands with vim-fugitive
        vim.api.nvim_set_keymap('n', '<Leader>gg', ':Git <CR>', { noremap = true, silent = true })  
        vim.api.nvim_set_keymap('n', '<Leader>ga', ':Git add .<CR>', { noremap = true, silent = true })  -- Git add
        vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git status<CR>', { noremap = true, silent = true })  -- Git status
        vim.api.nvim_set_keymap('n', '<Leader>gc', ':Git commit<CR>', { noremap = true, silent = true })  -- Git commit
        vim.api.nvim_set_keymap('n', '<Leader>gp', ':Git push<CR>', { noremap = true, silent = true })    -- Git push
        vim.api.nvim_set_keymap('n', '<Leader>gl', ':Git log<CR>', { noremap = true, silent = true })     -- Git log
        vim.api.nvim_set_keymap('n', '<Leader>gv', ':Gvdiff!<CR>', { noremap = true, silent = true })  -- Git diff

        -- Git Blame: Show blame info for the current line or the entire file
        vim.api.nvim_set_keymap('n', '<Leader>gb', ':Git blame<CR>', { noremap = true, silent = true })   -- Git blame

        -- Gwrite on gw
        vim.api.nvim_set_keymap('n', '<Leader>gw', ':Gwrite!<CR>', { noremap = true, silent = true })  -- Git write

        -- Accept changes from the left side (current branch)
        vim.api.nvim_set_keymap('n', '<Leader>gh', ':diffget //2<CR>', { noremap = true, silent = true })  -- Accept left side (current branch)

        -- Accept changes from the right side (other branch)
        vim.api.nvim_set_keymap('n', '<Leader>gl', ':diffget //3<CR>', { noremap = true, silent = true })  -- Accept right side (other branch)
        vim.api.nvim_set_keymap('n', '<Leader>gr', ':Git reset --hard HEAD~1<CR>', { noremap = true, silent = true })  -- Hard revert

        vim.api.nvim_set_keymap('n', '<Leader>gm', ':diffget //2<CR>:diffget //3<CR>', { noremap = true, silent = true })

    end
}

local function basic_text_objects()
    -- TextObject for various symbols
    local chars = { '_', '.', ':', ',', ';', '|', '/', '\\', '*', '+', '%', '`', '?' }
    local modes = { 'x', 'o' } -- Visual(`x`) and Operator-Pending(`o`) modes
    for _, char in ipairs(chars) do
        for _, mode in ipairs(modes) do
            -- Inside text object
            vim.api.nvim_set_keymap(mode, "i" .. char, string.format(':<C-u>normal! T%svt%s<CR>', char, char), { noremap = true, silent = true })
            -- Around text object
            vim.api.nvim_set_keymap(mode, "a" .. char, string.format(':<C-u>normal! F%svf%s<CR>', char, char), { noremap = true, silent = true })
        end
    end
end

-- Call the function to create text objects
basic_text_objects()



local function toggleRelativeNumber()
    if vim.api.nvim_win_get_option(0, 'relativenumber') then
        vim.o.relativenumber = false
        vim.o.number = true
    else
        vim.o.relativenumber = true
    end
end

return { toggleRelativeNumber = toggleRelativeNumber }

local function toggleRelativeNumber()
    if vim.api.nvim_win_get_option(0, 'relativenumber') then
        vim.o.relativenumber = false
        vim.o.number = true
    else
        vim.o.relativenumber = true
    end
end

local function number2superscript(num)
    local convert = {
        ['0'] = '⁰',
        ['1'] = '¹',
        ['2'] = '²',
        ['3'] = '³',
        ['4'] = '⁴',
        ['5'] = '⁵',
        ['6'] = '⁶',
        ['7'] = '⁷',
        ['8'] = '⁸',
        ['9'] = '⁹',
    }
    local superscript = ''
    local strNums = vim.split(tostring(num), '')
    for idx = 1, #strNums do
        superscript = superscript .. convert[strNums[idx]]
    end
    return superscript
end

return {
    toggleRelativeNumber = toggleRelativeNumber,
    number2superscript = number2superscript
}

require("codesnap").setup({
    mac_window_bar = true,
    title = "",
    code_font_family = "GoormSansCode400 Nerd Font",
    watermark = "",
    bg_theme = "default",
    bg_color = "#FFFFFF",
    breadcrumbs_separator = "/",
    has_breadcrumbs = false,
    has_line_number = false,
    show_workspace = false,
    bg_x_padding = 54,
    bg_y_padding = 46,
    save_path = os.getenv("XDG_PICTURES_DIR") or (os.getenv("HOME").. "/Pictures")
})

require("image").setup({
  backend = "kitty",
  processor = "magick_cli",
  integrations = {
    markdown = {
      enabled = true,
      clear_in_insert_mode = false,
      download_remote_images = true,
      only_render_image_at_cursor = false,
      -- only_render_image_at_cursor = true,
      filetypes = { "markdown", "vimwiki" },
    },
    neorg = {
      enabled = true,
      filetypes = { "norg" },
    },
    typst = {
      enabled = true,
      filetypes = { "typst" },
    },
    html = {
      enabled = false,
    },
    css = {
      enabled = false,
    },
  },
  max_width = nil,
  max_height = nil,
  max_width_window_percentage = 90,
  max_height_window_percentage = 95,
  window_overlap_clear_enabled = true,
  window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
  editor_only_render_when_focused = false,
  tmux_show_only_in_active_window = false,
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
})

-- multicursor.nvim
local mc = require("multicursor-nvim")

mc.setup()

local set = vim.keymap.set

-- Add or skip cursor above/below the main cursor.
-- set({"n", "v"}, "<up>",
--     function() mc.lineAddCursor(-1) end)
-- set({"n", "v"}, "<down>",
--     function() mc.lineAddCursor(1) end)
-- set({"n", "v"}, "<leader><up>",
--     function() mc.lineSkipCursor(-1) end)
-- set({"n", "v"}, "<leader><down>",
--     function() mc.lineSkipCursor(1) end)
set({"n", "v"}, "K",
    function() mc.lineAddCursor(-1) end)
set({"n", "v"}, "J",
    function() mc.lineAddCursor(1) end)
set({"n", "v"}, "<leader>k",
    function() mc.lineSkipCursor(-1) end)
set({"n", "v"}, "<leader>j",
    function() mc.lineSkipCursor(1) end)

-- Add or skip adding a new cursor by matching word/selection
set({"n", "v"}, "<leader>n",
    function() mc.matchAddCursor(1) end)
set({"n", "v"}, "<leader>s",
    function() mc.matchSkipCursor(1) end)
set({"n", "v"}, "<leader>N",
    function() mc.matchAddCursor(-1) end)
set({"n", "v"}, "<leader>S",
    function() mc.matchSkipCursor(-1) end)

-- Add all matches in the document
set({"n", "v"}, "<leader>A", mc.matchAllAddCursors)

-- You can also add cursors with any motion you prefer:
-- set("n", "<right>", function()
--     mc.addCursor("w")
-- end)
-- set("n", "<leader><right>", function()
--     mc.skipCursor("w")
-- end)

-- Rotate the main cursor.
set({"n", "v"}, "<left>", mc.nextCursor)
set({"n", "v"}, "<right>", mc.prevCursor)

-- Delete the main cursor.
set({"n", "v"}, "<leader>x", mc.deleteCursor)

-- Add and remove cursors with control + left click.
set("n", "<c-leftmouse>", mc.handleMouse)

-- Easy way to add and remove cursors using the main cursor.
set({"n", "v"}, "<c-q>", mc.toggleCursor)

-- Clone every cursor and disable the originals.
set({"n", "v"}, "<leader><c-q>", mc.duplicateCursors)

set("n", "<esc>", function()
    if not mc.cursorsEnabled() then
        mc.enableCursors()
    elseif mc.hasCursors() then
        mc.clearCursors()
    else
        -- Default <esc> handler.
    end
end)

-- bring back cursors if you accidentally clear them
set("n", "<leader>gv", mc.restoreCursors)

-- Align cursor columns.
set("n", "<leader>a", mc.alignCursors)

-- Split visual selections by regex.
set("v", "S", mc.splitCursors)

-- Append/insert for each line of visual selections.
set("v", "I", mc.insertVisual)
set("v", "A", mc.appendVisual)

-- match new cursors within visual selections by regex.
set("v", "M", mc.matchCursors)

-- Rotate visual selection contents.
set("v", "<leader>t",
    function() mc.transposeCursors(1) end)
set("v", "<leader>T",
    function() mc.transposeCursors(-1) end)

-- Jumplist support
set({"v", "n"}, "<c-i>", mc.jumpForward)
set({"v", "n"}, "<c-o>", mc.jumpBackward)

-- Customize how cursors look.
local hl = vim.api.nvim_set_hl
hl(0, "MultiCursorCursor", { link = "Cursor" })
hl(0, "MultiCursorVisual", { link = "Visual" })
hl(0, "MultiCursorSign", { link = "SignColumn"})
hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
hl(0, "MultiCursorDisabledSign", { link = "SignColumn"})

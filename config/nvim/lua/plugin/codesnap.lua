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

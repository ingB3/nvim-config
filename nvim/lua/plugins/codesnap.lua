return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function ()
    require("codesnap").setup({
      mac_window_bar = true,
      title = "",
      code_font_family = "GoormSansCode400 Nerd Font",
      watermark = "",
      bg_theme = "default",
      bg_color = "#FFFFFF",
      breadcrumbs_separator = "/",
      has_breadcrumbs = true,
      has_line_number = false,
      show_workspace = false,
      bg_x_padding = 26,
      bg_y_padding = 23,
      save_path = os.getenv("XDG_PICTURES_DIR") or (os.getenv("HOME").. "/Pictures")
    })
  end,
}

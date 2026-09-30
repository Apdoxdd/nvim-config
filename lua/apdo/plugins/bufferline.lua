return {
    "akinsho/bufferline.nvim",

    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                separator_style = "slant",
                show_buffer_close_icons = true,
                show_close_icon = false,
            },
        })
    end,
}

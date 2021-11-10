require('telescope').load_extension('fzf')
require('telescope').setup({
    pickers = {
        find_files = {
            theme = "ivy",
            layout_config = {
                height = 10
            }
        },
        buffers = {
            theme = "ivy",
            layout_config = {
                height = 9,
                preview_cutoff = 8
            }
        },
        grep_string = {
            theme = "ivy",
            layout_config = {
                height = 9,
                preview_cutoff = 8
            }
        }
    }
})


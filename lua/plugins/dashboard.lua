local db = require "dashboard"
-- hi DashboardHeader guifg=your color

db.custom_header = {
    "",
    "",
    "",
    "██╗   ██╗ ██████╗ ██╗   ██╗██████╗ ███████╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
    "╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗██╔════╝   ████╗  ██║██║   ██║██║████╗ ████║",
    " ╚████╔╝ ██║   ██║██║   ██║██████╔╝███████╗   ██╔██╗ ██║██║   ██║██║██╔████╔██║",
    "  ╚██╔╝  ██║   ██║██║   ██║██╔══██╗╚════██║   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "   ██║   ╚██████╔╝╚██████╔╝██║  ██║███████║██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "   ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
    "",
    "",
    "",
}

db.custom_center = {
    {
        icon = "🔭  ",
        desc = "Search Files                           ",
        action = "Telescope find_files",
        shortcut = "Space f f",
    },
    {
        icon = "  ",
        desc = "File Explorer                           ",
        action = "NeoTreeFloatToggle",
        shortcut = "Space e e",
    },
    {
        icon = "  ",
        desc = "Find  word                              ",
        action = "Telescope live_grep",
        shortcut = "Space f w",
    },
}

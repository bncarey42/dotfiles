return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = {
      [[                    ┳┓┏┓┏┓┓┏┳┳┳┓                    ]],
      [[                    ┃┃┣ ┃┃┃┃┃┃┃┃                    ]],
      [[                    ┛┗┗┛┗┛┗┛┻┛ ┗                    ]],
      [[                                               ___  ]],
      [[                                            ,o88888 ]],
      [[                                         ,o8888888' ]],
      [[                   ,:o:o:oooo.        ,8O88Pd8888"  ]],
      [[               ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
      [[             ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
      [[            , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
      [[           , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
      [[          , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
      [[           . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
      [[              . ..:.::o:ooooOoCoCCC"o:o             ]],
      [[              . ..:.::o:o:,cooooCo"oo:o:            ]],
      [[           `   . . ..:.:cocoooo"'o:o:::'            ]],
      [[           .`   . ..::ccccoc"'o:o:o:::'             ]],
      [[          :.:.    ,c:cccc"':.:.:.:.:.'              ]],
      [[        ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
      [[      ...:.'.:.::::"'    . . . . .'                 ]],
      [[     .. . ....:."' `   .  . . ''                    ]],
      [[   . . . ...."'                                     ]],
      [[   .. . ."'                                         ]],
      [[ ..                                                 ]],
      [[               bncarey42 | raventrout               ]],
    }
    dashboard.section.header.val = logo

    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", LazyVim.pick()),
      dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
      dashboard.button("r", " " .. " Recent files", LazyVim.pick("oldfiles")),
      dashboard.button("g", " " .. " Find text", LazyVim.pick("live_grep")),
      dashboard.button("c", " " .. " Config", LazyVim.pick.config_files()),
      dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}

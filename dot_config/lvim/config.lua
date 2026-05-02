-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- vim-illuminate's treesitter provider currently trips Neovim 0.12's API.
lvim.builtin.illuminate.options.providers = {
  "lsp",
  "regex",
}

-- Avoid Mason prompting to install Ruby's solargraph automatically.
lvim.lsp.installer.setup.automatic_installation.exclude = {
  "solargraph",
}

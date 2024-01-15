local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<j>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<k>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<l>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<ö>", function() harpoon:list():select(4) end)
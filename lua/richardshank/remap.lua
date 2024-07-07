vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function()
	vim.cmd("w")
	vim.cmd("Ex")
end)

vim.opt.tabstop = 4

vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.softtabstop = 4

vim.keymap.set({ "n", "i", "v" }, "<C-s>", vim.cmd.w, { desc = "Save file" })
vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd InsertLeave,TextChanged * silent! write
  augroup END
]])

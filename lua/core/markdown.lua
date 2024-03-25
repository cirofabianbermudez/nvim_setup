-- Options when running macros and remaps
local opt = { noremap = true }
vim.keymap.set('i', '<C-k>', "[]()<left><esc>\"+pF[a", opt)


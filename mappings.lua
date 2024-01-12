-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- blocksave menu
    ["<leader>k"] = { desc = "Block and Save" },
    ["<leader>ks"] = { "<cmd> w <CR>", desc = "save" },
    ["<leader>ke"] = { "<cmd> enew <CR>", desc = "new buffer" },
    ["<leader>kj"] = { "<cmd> bd <CR>", desc = "close buffer" },
    ["<leader>kx"] = { "<cmd> wq <CR>", desc = "save and exit" },
    ["<leader>ko"] = { "<cmd> Explore <CR>", desc = "open file" },
    ["<leader>kq"] = { "<cmd> q! <CR>", desc = "abandon changes and quit" },
    ["<leader>kf"] = { "<cmd> terminal <CR>", desc = "open terminal" },
    ["<leader>kl"] = { "<cmd> cd %:p:h <CR>", desc = "change working dir" },
    ["<leader>kd"] = { "<cmd> Diary <CR>", desc = "open diary" },
    --onscreen format menu
    ["<leader>o"] = { desc = "Onscreen Format" },
    ["<leader>op"] = { "<cmd> MarkdownPreview <CR>", desc = "markdown preview" },
    ["<leader>om"] = { "<cmd> MarkdownPreviewStop <CR>", desc = "stop markdown preview" },
    ["<leader>ok"] = { "<cmd> bnext <CR>", desc = "next buffer" },
    ["<leader>ol"] = { "<cmd> ToggleDiagOff <CR>", desc = "diagnostics off" },
    ["<leader>on"] = { "<cmd> ToggleDiagOn <CR>", desc = "diagnostics on" },
    ["<leader>os"] = { "<cmd> set spell <CR>", desc = "spell check" },
    ["<leader>oo"] = { "<cmd> set nospell <CR>", desc = "spell check off" },
    --Might be built in ["<leader>ob"] = {"", desc = "switch buffer"}
    ["<leader>ou"] = { "<cmd> call voom#Init('markdown', 1, 1) <CR>", desc = "toggle outline" },
    --Git menu
    ["<leader>gc"] = { "<cmd> Git commit <CR>", desc = "git commit" },
    ["<leader>gm"] = { "<cmd> Git difftool -y master <CR>", desc = "git diff master" },
    -- Remap "toggle explorer focus"
    ["<leader>x"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end,
      desc = "Toggle Explorer Focus",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

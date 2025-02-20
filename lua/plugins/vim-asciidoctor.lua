return {
  "habamax/vim-asciidoctor",
  event = "VeryLazy",
  keys = {
    { "<leader>aP", ":AsciidoctorOpenPDF<CR>", ft = "asciidoc" },
    { "<leader>aH", ":AsciidoctorOpenHTML<CR>", ft = "asciidoc" },
    { "<leader>aX", ":AsciidoctorOpenDOCX<CR>", ft = "asciidoc" },
    { "<leader>ah", ":Asciidoctor2HTML<CR>", ft = "asciidoc" },
    { "<leader>ap", ":Asciidoctor2PDF<CR>", ft = "asciidoc" },
    { "<leader>ax", ":Asciidoctor2DOCX<CR>", ft = "asciidoc" },
    { "<leader>p", ":AsciidoctorPasteImage<CR>", ft = "asciidoc" },
    -- Toggle checkbox nhanh trong AsciiDoc
    {
      "<leader>tc",
      function()
        local line = vim.api.nvim_get_current_line()
        if line:match("%[ %]") then
          line = line:gsub("%[ %]", "[x]", 1)
        elseif line:match("%[x%]") then
          line = line:gsub("%[x%]", "[ ]", 1)
        end
        vim.api.nvim_set_current_line(line)
      end,
      desc = "Toggle checkbox (Normal Mode)",
      ft = "asciidoc",
    },
  },
}

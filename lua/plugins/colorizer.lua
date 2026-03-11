return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPost",
  config = function()
    require("colorizer").setup({
      "*"; -- highlight all files
      css = { rgb_fn = true; }; -- enable rgb() functions in CSS
      html = { names = true; css = true; }; -- color names and CSS
    })
  end,
}

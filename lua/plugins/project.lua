return {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    config = function()
        local status_ok, project = pcall(require, "project_nvim")
        if not status_ok then
            return -- Plugin not installed, silently skip
        end

        project.setup({
            detection_methods = { "pattern" },
            patterns = { ".git", "package.json", "Makefile", "*.csproj" },
            show_hidden = true,
        })

        -- Telescope integration (optional)
        local telescope_ok, telescope = pcall(require, "telescope")
        if telescope_ok then
            telescope.load_extension("projects")
        end
    end,
}

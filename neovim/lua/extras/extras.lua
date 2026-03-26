return {
   -- languages
   { import = "lazyvim.plugins.extras.lang.python" },
   { import = "lazyvim.plugins.extras.lang.typescript" },
   { import = "lazyvim.plugins.extras.lang.java" },
   { import = "lazyvim.plugins.extras.lang.sql" },
   { import = "lazyvim.plugins.extras.lang.go" },
   { import = "lazyvim.plugins.extras.lang.vue" },
   { import = "lazyvim.plugins.extras.lang.tailwind" },
   --  { import = "lazyvim.plugins.extras.lang.nix" },

   -- frameworks
   { import = "lazyvim.plugins.extras.lang.vue" },

   -- formatting & linting
   { import = "lazyvim.plugins.extras.formatting.prettier" },
   { import = "lazyvim.plugins.extras.linting.eslint" },

   -- cloud
   { import = "lazyvim.plugins.extras.lang.docker" },
   { import = "lazyvim.plugins.extras.lang.terraform" },
   { import = "lazyvim.plugins.extras.lang.helm" },

   -- markup formats
   { import = "lazyvim.plugins.extras.lang.json" },
   { import = "lazyvim.plugins.extras.lang.yaml" },
   { import = "lazyvim.plugins.extras.lang.toml" },

   -- util
   { import = "lazyvim.plugins.extras.util.mini-hipatterns" },

   -- editor
   { import = "lazyvim.plugins.extras.editor.Fzf" },
}

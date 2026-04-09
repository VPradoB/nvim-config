return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      provider = "openai_fim_compatible",
      n_completions = 1,
      context_window = 1024,
      provider_options = {
        openai_fim_compatible = {
          api_key = "TERM",
          end_point = "http://localhost:12434/engines/llama.cpp/v1/completions",
          model = "huggingface.co/unsloth/qwen3.5-2b-gguf:q8_0",
          name = "Qwen3.5-2b",
          stream = true,
          optional = {
            max_tokens = 128,
            temperature = 0.8,
            top_p = 0.95,
          },
          template = {
            prompt = function(context_before_cursor, context_after_cursor, _)
              return "<|fim_prefix|>"
                .. context_before_cursor
                .. "<|fim_suffix|>"
                .. context_after_cursor
                .. "<|fim_middle|>"
            end,
            suffix = false,
          },
        },
      },
      virtualtext = {
        auto_trigger_ft = { "python", "lua", "javascript", "typescript", "go", "rust" },
        keymap = {
          accept = "<A-a>",
          accept_line = "<A-l>",
          dismiss = "<A-e>",
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      sources = {
        default = { "minuet" },
        providers = {
          minuet = {
            name = "minuet",
            module = "minuet.blink",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
  },
}

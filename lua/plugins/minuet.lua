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
          model = "huggingface.co/ggml-org/qwen2.5-coder-1.5b-q8_0-gguf",
          name = "Qwen2.5-Coder",
          stream = true,
          optional = {
            max_tokens = 256,
            temperature = 0.2,
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

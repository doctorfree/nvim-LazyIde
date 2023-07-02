return {
  -- Disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    keys = function()
      return {}
    end,
  },
}

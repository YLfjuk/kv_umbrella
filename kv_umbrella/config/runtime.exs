import Config

config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :foo@YL},
    {?n..?z, :bar@YL}
  ]
end

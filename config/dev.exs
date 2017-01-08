use Mix.Config

config :chat, Chat.Endpoint,
  http: [port: System.get_env("PORT") || 4000],
  debug_errors: true,
  cache_static_lookup: false,
  code_reloader: true,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch"]]

config :logger, :console, format: "[$level] $message\n"
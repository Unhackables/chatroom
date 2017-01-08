use Mix.Config

config :chat, Chat.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn

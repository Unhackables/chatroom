defmodule Chat.Endpoint do
  use Phoenix.Endpoint, otp_app: :chat

  socket "/socket", Chat.UserSocket

  plug Plug.Static,
    at: "/", from: :chat,
    only: ~w(css images js favicon.ico robots.txt)

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_chat_key",
    signing_salt: "xxx",
    encryption_salt: "xxx"

  plug Chat.Router
end

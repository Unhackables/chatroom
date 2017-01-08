defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger,
                   :redix, :ssl]]
  end

  defp deps do
    [{:phoenix, "~> 1.2"},
     {:phoenix_ecto, "~> 3.0.1"},
     {:phoenix_html, "~> 2.6.2"},
     {:gettext, "~> 0.9"},
     {:cowboy, "~> 1.0"},
     {:redix, "~> 0.4.0"},
     {:secure_random, "~> 0.5"},
     {:json_web_token, "~> 0.2.6"}]
  end


end

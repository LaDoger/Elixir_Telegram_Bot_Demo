defmodule TelegramAnnouncementBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :telegram_announcement_bot,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:poison, "~> 4.0"},
      {:logger_file_backend, "~> 0.0.10"},
      {:dotenv, "~> 3.0.0"}
    ]
  end
end

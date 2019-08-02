use Mix.Config

config :londibot, Londibot.Repo,
  database: "londibot_repo",
  username: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :londibot, :slack_token, System.get_env("LONDIBOT_SLACK")
config :londibot, :telegram_token, System.get_env("LONDIBOT_TELEGRAM")

config :londibot, :tfl_app_id, System.get_env("TFL_APP_ID")
config :londibot, :tfl_app_key, System.get_env("TFL_APP_KEY")

config :logger, level: :error

config :londibot, :tfl_service, Londibot.TFLMock
config :londibot, :notifier, Londibot.NotifierMock
config :londibot, :subscription_store, Londibot.SubscriptionStoreMock

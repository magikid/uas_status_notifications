# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uas_status_notifications,
  ecto_repos: [UasStatusNotifications.Repo]

# Configures the endpoint
config :uas_status_notifications, UasStatusNotifications.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hlRIwyVcYw2Rb1d96Fa+P8u0JG7jeR/TiqShpbKg8oZN7Xr/q4ZaT8fl0aXb71th",
  render_errors: [view: UasStatusNotifications.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UasStatusNotifications.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

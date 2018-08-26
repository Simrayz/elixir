# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :articleq,
  ecto_repos: [Articleq.Repo]

# Configures the endpoint
config :articleq, Articleq.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kDHNvPqXaompmCAvkUkDq7cr84Iyp9ZZc4UDN2deF/yK1SVaqTIIPo7JGnPP+YEq",
  render_errors: [view: Articleq.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Articleq.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :guardian, Guardian,
  issuer: "Articleq",
  ttl: {30, :days},
  verify_issuer: true,
  secret_key: "pAswzNbZxh5UDD6PX+bSj7skCSjbUkMADmdJYk5X9CEacJFmzrUSvP8tKCrt4VzB",
  serializer: Articleq.GuardianSerializer

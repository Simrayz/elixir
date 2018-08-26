# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coinferret,
  ecto_repos: [Coinferret.Repo]

# Configures the endpoint
config :coinferret, CoinferretWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nPh5TNgpXTm0lcKqO24pTo+QqmtZPOTxCqKU9IePxVLUHuSjPS1X5vcOZ7a0X87g",
  render_errors: [view: CoinferretWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Coinferret.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Coinferret.Users.User,
  repo: Coinferret.Repo,
  module: Coinferret,
  web_module: CoinferretWeb,
  router: CoinferretWeb.Router,
  messages_backend: CoinferretWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :confirmable, :registerable]

config :coherence, CoinferretWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

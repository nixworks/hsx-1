# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hsx,
  ecto_repos: [Hsx.Repo]

# Configures the endpoint
config :hsx, Hsx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "weTFnWFLVROUW65RCjKRxdcPkE3t5Qxbn1oWtAk2Sf1Lw0WalKgS6zWx9yZCpEhB",
  render_errors: [view: Hsx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hsx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

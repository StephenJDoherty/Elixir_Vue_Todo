import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :todoApi, TodoApi.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "todoapi_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todoApi, TodoApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "fxx8lNU3PHi1d3bvegxye1toLvO1Yd9T8vQ92mkCmGJ9q94xmbW1V5o5GvdC4s7/",
  server: false

# In test we don't send emails.
config :todoApi, TodoApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

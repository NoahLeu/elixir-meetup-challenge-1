import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :challenge_1, Challenge1Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+1empW92u+0tBKWVd0MY1b+oVrDjQmnLz7Zo3ZQGrst4IMChLatLwobRdkSnErEI",
  server: false

# In test we don't send emails.
config :challenge_1, Challenge1.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

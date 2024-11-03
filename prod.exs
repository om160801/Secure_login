import Config

# MySQL Configuration
config :secure_login_system, SecureLoginSystem.Repo,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "secure_login_system_prod",
  port: 3306,
  pool_size: 10,
  adapter: Ecto.Adapters.MyXQL

# Configure your Endpoint for Production
config :secure_login_system, SecureLoginSystemWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: SecureLoginSystem.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# SecureLoginSystem


Here’s a README file for your Secure Login System:

Secure Login System
A robust login and signup system built with Elixir and Phoenix that provides secure user authentication. The system supports traditional email and password login with stringent validation as well as Google-based third-party authentication.

Features
User Authentication:

Secure login/signup using a valid email and password.
Email validation to ensure correct formatting.
Password validation enforcing strength requirements.
Third-party authentication using Google sign-in.
Security:

Password hashing using Argon2 to secure user credentials.
Protection against brute-force attacks with enforced password policies.
JWT-based session management with Guardian for secure access.
Getting Started
Prerequisites
Elixir
Phoenix Framework
PostgreSQL (or any compatible database)
Installation
Clone the repository:

bash
cd secure-login-system
Install dependencies:

bash

mix deps.get
Configure Database:

Update the database settings in config/dev.exs:

elixir

config :secure_login_system, SecureLoginSystem.Repo,
  username: "your_username",
  password: "your_password",
  database: "secure_login_system_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10


config :secure_login_system, SecureLoginSystem.Guardian,
  issuer: "secure_login_system",
  secret_key: "your_secret_key"
Create and Migrate Database:

bash

mix ecto.create
mix ecto.migrate
Generate Secrets for Guardian:

mix phx.server
Visit http://localhost:4000 in your browser to access the application.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`


Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

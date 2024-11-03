defmodule SecureLoginSystemWeb.Router do
  use SecureLoginSystemWeb, :router
  import Guardian.Plug

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {SecureLoginSystemWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Guardian.Plug.SecureSession  # Add Guardian's SecureSession plug for authentication
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SecureLoginSystemWeb do
    pipe_through :browser

    # Define your routes here
    get "/", PageController, :home
    # Additional routes can be added here, e.g.:
    # get "/dashboard", DashboardController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SecureLoginSystemWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:secure_login_system, :dev_routes) do
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: SecureLoginSystemWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end

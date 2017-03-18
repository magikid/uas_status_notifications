defmodule UasStatusNotifications.Router do
  use UasStatusNotifications.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UasStatusNotifications do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", UasStatusNotifications do
    pipe_through :api
    resources "/notifications", NotificationController, except: [:new, :edit]
  end
end

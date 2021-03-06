defmodule PhoenixTodosWeb.Router do
  use PhoenixTodosWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", PhoenixTodosWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)

    get("/hello", HelloController, :index)

    post("/create-todo", HelloController, :create_todo)
  end

  # Other scopes may use custom stacks.
  # scope "/api", Web do
  #   pipe_through :api
  # end
end

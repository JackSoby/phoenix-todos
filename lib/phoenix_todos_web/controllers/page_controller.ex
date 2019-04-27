defmodule PhoenixTodosWeb.PageController do
  use PhoenixTodosWeb, :controller
  require IEx

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

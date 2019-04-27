defmodule PhoenixTodosWeb.HelloController do
  use PhoenixTodosWeb, :controller
  require IEx
  alias PhoenixTodos.Todos

  def index(conn, _params) do
    todos = PhoenixTodos.Todos.list_todos()
    render(conn, "index.html", todos: todos, token: get_csrf_token())
  end

  def create_todo(conn, params) do
    result = PhoenixTodos.Todos.create_todo(params)
    # IEx.pry()

    conn
    |> redirect(to: "/hello")
  end
end

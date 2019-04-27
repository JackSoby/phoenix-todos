defmodule PhoenixTodos.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field(:task, :string)

    timestamps()
  end

  @doc false

  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:task])
    |> validate_required([:task])
  end
end

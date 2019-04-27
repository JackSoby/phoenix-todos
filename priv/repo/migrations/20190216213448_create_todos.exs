defmodule PhoenixTodos.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add(:task, :string)

      timestamps()
    end
  end
end

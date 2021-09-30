defmodule Wabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :nome, :string
      add :password, :string

      timestamps()
    end

    create unique_index(:users, [:email]) #Para o email não ter a possibilidade de ser repetido
  end
end

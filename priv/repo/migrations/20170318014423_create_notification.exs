defmodule UasStatusNotifications.Repo.Migrations.CreateNotification do
  use Ecto.Migration

  def change do
    create table(:notifications) do
      add :name, :string

      timestamps()
    end

  end
end

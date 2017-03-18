defmodule UasStatusNotifications.NotificationTest do
  use UasStatusNotifications.ModelCase

  alias UasStatusNotifications.Notification

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Notification.changeset(%Notification{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Notification.changeset(%Notification{}, @invalid_attrs)
    refute changeset.valid?
  end
end

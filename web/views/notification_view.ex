defmodule UasStatusNotifications.NotificationView do
  use UasStatusNotifications.Web, :view

  def render("index.json", %{notifications: notifications}) do
    %{data: render_many(notifications, UasStatusNotifications.NotificationView, "notification.json")}
  end

  def render("show.json", %{notification: notification}) do
    %{data: render_one(notification, UasStatusNotifications.NotificationView, "notification.json")}
  end

  def render("notification.json", %{notification: notification}) do
    %{id: notification.id,
      name: notification.name}
  end
end

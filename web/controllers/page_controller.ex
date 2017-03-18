defmodule UasStatusNotifications.PageController do
  use UasStatusNotifications.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

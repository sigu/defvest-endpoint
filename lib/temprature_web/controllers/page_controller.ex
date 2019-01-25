defmodule TempratureWeb.PageController do
  use TempratureWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

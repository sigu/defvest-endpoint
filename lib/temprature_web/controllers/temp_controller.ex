defmodule TempratureWeb.TempController do
  use TempratureWeb, :controller

  def index(conn, _params) do
    render(conn, "temp.json")
  end
end

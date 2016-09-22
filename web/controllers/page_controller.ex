defmodule Holdem.PageController do
  use Holdem.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

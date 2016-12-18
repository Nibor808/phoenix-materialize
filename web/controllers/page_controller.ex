defmodule Materialize.PageController do
  use Materialize.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

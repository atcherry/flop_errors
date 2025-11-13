defmodule FlopErrorsWeb.PageController do
  use FlopErrorsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

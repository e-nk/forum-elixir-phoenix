defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
  def users(conn, _params) do
    users = [
      %{id: 1, name: "John", email: "john@mail.com"},
      %{id: 2, name: "Jane", email: "jane@mail.com"},
      %{id: 3, name: "Bob", email: "bob@mail.com"}
    ]
    json(conn, %{users: users})
  end
end

defmodule TodoApiWeb.LayoutView do
  use TodoApiWeb, :view
  alias TodoApiWeb, TodoView

  def render("index.json", %{todos: todos}) do
    render_many(todos, TodoView, "todo.json")
  end

end

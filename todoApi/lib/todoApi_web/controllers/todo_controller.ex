defmodule TodoApiWeb.TodoController do
  use TodoApiWeb, :controller

  alias TodoApi.Models
  alias TodoApi.Models.Todo

  action_fallback TodoApiWeb.FallbackController

  def index(conn, _params) do
    todos = Models.list_todos()
    render(conn, "index.json", todos: todos)
  end

  def create() do

  end

  def show(conn, %{"id" => id}) do
    todo = Models.get_todo!(id)
    render(conn, "show.json", todo: todo)
  end

  def update() do

  end

  def delete() do

  end


end

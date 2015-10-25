class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = Todo.all
    # @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

end
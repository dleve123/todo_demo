class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to todos_path
    else
      flash[:errors] = "Content cannot be empty!"
      redirect_to new_todo_path
    end
  end

  def destroy
    @todo = Todo.where(params[:todo]).first
    @todo.destroy
    redirect_to todos_path
  end
end

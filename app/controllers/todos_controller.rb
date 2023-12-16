class TodosController < ApplicationController

def new
  @todo = Todo.new
end

def create
  @todo = Todo.new(todo_params)
  if @todo.save
    flash[:notice] = "Todo was created successfully!"
    redirect_to todo_path(@todo)
  else
    render 'new'
  end  
end

private
  def todo_params
    params.require(:todo).permit(:name, :descriptions)
  end

end
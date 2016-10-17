# gère les taches

class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new

	end

	def create
		@task = Task.new(tasks_params)
        if @task.save
          redirect_to @task
        else
          render 'new'
        end
			end

	def update

	end

	def edit
		@tasks = Task.find(params[:id])
	end

	def destroy
		@tasks = Task.find(params[:id])
		@tasks.destroy
		redirect_to tasks_path
	end

	def tasks_params
      params.require(:tasks).permit(:task_title, :task_description, :done, :deadline)
  end


end

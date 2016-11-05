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
		@task = Task.new(task_params)
        if @task.save
          redirect_to @task
        else
          render 'new'
        end
			end

	def update
			@task = Task.find(params[:id])
			if @task.update(task_params)
				redirect_to tasks_path
			else
				render 'edit'
			end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def destroy
		@tasks = Task.find(params[:id])
		@tasks.destroy
		redirect_to tasks_path
	end

	def task_params
      params.require(:task).permit(:task_title, :task_description, :done, :deadline)
  end

	private
		def authenticate_owner!

		end

end

# gère les taches

class TasksController < ApplicationController

	def index
		@tasks = Task.all
		redirect_to root_path
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		redirect_to root_path
	end

	def create
			@task = Task.new(task_params)
			@task.user = current_user
	    if @task.save
				redirect_to root_path
	    else
	      render 'new'
	  	end
	end

	def update
			@task = Task.find(params[:id])
			if @task.update(task_params)
				redirect_to root_path
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
		redirect_to root_path
	end

	def task_params
      params.require(:task).permit(:task_title, :task_description, :done, :deadline)
  end

	private
		def authenticate_owner
			if current_user.id == Task.find(params[:id]).user.id # or something similar
				return true
			end
			if request.referrer
				redirect_to request.referrer,
					:notice => "You must have permission to access this form."
			else
				redirect_to root_path,
					:notice => "You must have permission to access this form."
			end
			return false
		end


end

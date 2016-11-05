# gère les taches

class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
		@task = Task.find(params[:id])
	end

end

# gère les taches

class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if user_signed_in?
		    @tasks = Task.where(user: current_user)
    else
      redirect_to new_user_session_path
    end
	end

end

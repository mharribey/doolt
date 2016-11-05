# gère les taches

class UsersController < ApplicationController

  def index
    @users = User.all
  end

end

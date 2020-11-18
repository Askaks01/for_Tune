class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @routines = current_user.routines
  end
end

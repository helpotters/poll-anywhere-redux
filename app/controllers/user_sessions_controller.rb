class UserSessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user
      set_user user
    else
      name = params[:session][:name]
      create_user name
    end
  end

  def destroy
    remove_user
    redirect_to root_url
  end
end

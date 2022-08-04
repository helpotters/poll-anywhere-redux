class ApplicationController < ActionController::Base
  include UserSessionsHelper

  private

  def logged_in_user
    unless been_here_before?
      store_location
      flash[:danger] = 'Please add a name.'
      redirect_to root_url
    end
  end
end

class ApplicationController < ActionController::Base
  include UserSessionsHelper
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    redirect_to root_path
  end

  def logged_in_user
    unless been_here_before?
      store_location
      flash[:danger] = 'Please add a name.'
      redirect_to root_url
    end
  end
end

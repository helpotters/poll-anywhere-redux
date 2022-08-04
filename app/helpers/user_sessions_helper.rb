module UserSessionsHelper
  def  set_user
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def been_here_before?
    !current_user.nil?
  end

  def create_user
    User.build(name)
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end

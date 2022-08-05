module UserSessionsHelper
  def set_user(name)
    if session[:user_id].nil?
      user = create_user(name)
      session[:user_id] = user.id
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def been_here_before?
    !current_user.nil?
  end

  def create_user(name)
    User.create(name: name)
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end

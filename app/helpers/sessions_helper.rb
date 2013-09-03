module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
    self.current_user = user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    self.current_user = nil
    session.delete(:user_id)
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by( id: session[:user_id])
  end

  def current_user?(user)
    user == current_user
  end

  def require_logged_in_user
    unless logged_in?
      redirect_to new_session_path, notice: "Please Log in."
    end
  end

end

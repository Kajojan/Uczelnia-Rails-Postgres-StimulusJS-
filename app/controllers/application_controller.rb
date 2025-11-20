class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern

  helper_method :current_user, :user_signed_in?, :require_teacher



  def not_found
    redirect_to root_path, alert: "Nie znaleziono strony"
  end


  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    current_user.present?
  end

  def require_teacher
    unless user_signed_in? && ["teacher", "admin"].include?(current_user.role)
      redirect_to root_path, alert: "Nie masz uprawnień do wykonania tej akcji"
    end
  end

  def authenticate_user!
    redirect_to login_path, alert: "Musisz się zalogować" unless user_signed_in?
  end
  
end

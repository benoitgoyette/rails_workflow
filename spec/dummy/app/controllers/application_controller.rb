class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :development_authenticate_user!

  def development_authenticate_user!
    if Rails.env.development?
      authenticate_user!
    end
  end

end

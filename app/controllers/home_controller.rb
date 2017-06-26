class HomeController < ApplicationController
  def index
    if user_signed_in?
      return redirect_to dashboard_path
    else
      return redirect_to new_user_session_path
    end
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do 
   	redirect_to root_path, notice: "page not found"
   end

  rescue_from ActiveRecord::RecordNotFound do 
    redirect_to root_path, notice: "record not found"
  end
end

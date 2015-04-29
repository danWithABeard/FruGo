class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  before_filter :prepend_view_paths

  def prepend_view_paths
    prepend_view_path "app/views/"
  end

  protect_from_forgery with: :exception
end

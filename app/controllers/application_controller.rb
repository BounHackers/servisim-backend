class ApplicationController < ActionController::API
  def current_user
    if session[:user_id]
      if session[:user_type] == 'parent' do
        @current_user ||= Parent.find_by_id session[:user_id]
      elsif session[:user_type] == 'kid' do
        @current_user ||= Kid.find_by_id session[:user_id]
      elsif session[:user_type] == 'driver' do
        @current_user ||= Driver.find_by_id session[:user_id]
      else
        @current_user = nil
      end
    else
      @current_user = nil
    end
    @current_user
  end
end

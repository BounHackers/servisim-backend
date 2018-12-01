class ApplicationController < ActionController::API
  def current_user
    if session[:user_id]
      if session[:user_type] == 'parent' do
        Parent.find_by_id session[:user_id]
      elsif session[:user_type] == 'kid' do
        Kid.find_by_id session[:user_id]
      elsif session[:user_type] == 'driver' do
        Driver.find_by_id session[:user_id]
      else
        nil
      end
    else
      nil
    end
  end
end

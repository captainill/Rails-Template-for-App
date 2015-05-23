require 'browser'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_host

  def check_host
      if request.host.split('.')[0] == 'www'
          redirect_to "http://" + request.host.gsub('www.','')
      end
  end

end

class ApplicationController < ActionController::Base
  def hello
    render plain: "Hello everyone!"
  end   
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "I made a web app! Woot!"
  end

  def goodbye
  	render html: "goodbye, world!"
  end
end

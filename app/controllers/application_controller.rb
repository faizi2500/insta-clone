class ApplicationController < ActionController::Base
  def hello
    render inline: '<h1>Hello New World</h1>'
  end
end

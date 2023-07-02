class MainController < ApplicationController
  def index
    flash.now[:alert] = "This is an alert!"
    flash.now[:notice] = "This is a notice!"
  end
end

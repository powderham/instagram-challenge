class MainController < ApplicationController
  def home
  end

  def index
    redirect_to '/posts'
  end
end

class HomeController < ApplicationController

  def index
    if current_member
      render 'dashboard'
    end
  end
end

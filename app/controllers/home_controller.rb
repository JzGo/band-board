class HomeController < ApplicationController

  def index
    if current_member
      @bands = current_member.bands
      render 'dashboard'
    end
  end
end

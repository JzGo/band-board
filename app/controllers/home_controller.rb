class HomeController < ApplicationController

  def index
    if member_signed_in?
      redirect_to 'dashboard'
    end
  end
end

# require 'capybara/rails'
require 'rails_helper'

RSpec.feature "home", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  describe "signin" do
    it "shows signin form" do
      visit "/"
    end
  end
  describe "signup" do
    it "shows signup form" do
      visit "/"
    end
  end
  describe "getstarted" do
    it "shows signup form" do
      visit "/"
    end
  end
  it "if member not signed in, shows welcome"
  it "if member signed in, shows member dash"
end

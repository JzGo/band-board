# require 'capybara/rails'
require 'rails_helper'

RSpec.feature "home", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  member1 = FactoryGirl.create(:member)

  describe "home" do
    it "if member not signed in, shows welcome" do
      visit "/"
      expect(page).to have_content('Get Started!')
    end
    it "if member signed in, shows member dash"
  end

  describe "signin" do
    it "shows signin form" do
      visit "/"
      click_on('Sign In')
      expect(page).to have_content('Sign In')
    end
  end

  describe "signup" do
    it "shows signup form" do
      visit "/"
      click_on('Sign Up')
      expect(page).to have_content('Sign Up')
    end
  end

  describe "getstarted" do
    it "shows signup form" do
      visit "/"
      click_on('Get Started!')
      expect(page).to have_content('Email')
    end
  end
end

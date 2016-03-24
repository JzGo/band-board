# require 'capybara/rails'
require 'rails_helper'
# require 'database_cleaner'

RSpec.feature "home", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  member1 = FactoryGirl.create(:member)

  describe "home#index" do
    #TODO Clean up tests
    it "if member not signed in, shows welcome" do
      visit "/"
      expect(page).to have_content('Get Started!')
    end
    it "redirects to member dash on successful sign in" do
      visit "/"
      click_on("Sign In")
      fill_in('Email', :with => member1.email)
      fill_in('Password', :with => member1.password)
      click_on('Log in')
      expect(page).to have_content('Stuff')
    end
    it "if member signed in, shows member dash" do
      visit "/"
      click_on("Sign In")
      fill_in('Email', :with => member1.email)
      fill_in('Password', :with => member1.password)
      click_on('Log in')
      visit "/"
      expect(page).to have_content('Stuff')
    end
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

require 'rails_helper'

feature 'users can sign in and out' do

  context "view logic of sign in/sign out links" do
    it "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context "if current user logic" do
    it 'should allow the user to sign in' do
      user_sign_up('alfie@test.com')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end

end

require 'rails_helper'

module FeatureHelpers

  def post_picture(caption)
    visit '/photos'
    click_link("Add a photo")
    fill_in 'photo[caption]', with: caption
    page.attach_file('photo[image]', Rails.root + 'spec/support/testing.jpg')
    click_button 'Save Photo'
  end

  def user_sign_up(email)
    visit '/users/sign_up'
    fill_in 'user[email]', with: email
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_button 'Sign up'
  end

end

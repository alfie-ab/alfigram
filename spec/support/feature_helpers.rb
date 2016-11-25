require 'rails_helper'

module FeatureHelpers

  def post_picture(caption)
    visit '/photos'
    click_link("Add a photo")
    fill_in 'photo[caption]', with: caption
    page.attach_file('photo[image]', Rails.root + 'spec/support/testing.jpg')
    click_button 'Save Photo'
  end

end

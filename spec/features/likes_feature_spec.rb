require 'rails_helper'

feature 'liking a photo' do

  it 'should allow you to like a picture' do
    post_picture('picture')
    click_link('picture')
    click_button('Like!')
    visit '/'
    expect(page).to have_content('1 Like')
  end

end

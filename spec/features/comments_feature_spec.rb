require 'rails_helper'

feature 'posting a comment' do

  it 'should render a page where you can type a comment' do
    post_picture('picture')
    click_link('picture')
    click_link('Add comment')
    expect(page).to have_content('Description')
  end

end

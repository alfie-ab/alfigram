require 'rails_helper'

feature 'posting a comment' do

  it 'should render a page where you can type a comment' do
    post_picture('picture')
    click_link('picture')
    click_link('Add comment')
    expect(page).to have_content('Description')
  end

  it 'should display the comment by the picture' do
    post_picture('picture')
    click_link('picture')
    click_link('Add comment')
    fill_in 'comment[description]', with: "Cool photo"
    click_button 'Save Comment'
    click_link('picture')
    expect(page).to have_content("Cool photo")
  end

end

require 'rails_helper'

feature 'homepage' do
  context 'no photos have been added' do
    scenario 'should display a button allowing user to add photo' do
      visit '/photos'
      expect(page).to have_link "Add a photo"
    end
  end

  context 'photos have been added' do

    scenario 'display photos' do
      post_picture('Loving lyf')
      expect(page).to have_content('Loving lyf')
    end

    scenario 'adding a comment to a photo' do
      post_picture("Hating it")
      visit '/photos/1'
      expect(page).to have_content('Hating it')
    end
  end

end

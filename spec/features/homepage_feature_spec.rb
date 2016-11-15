require 'rails_helper'

feature 'homepage' do
  context 'no photos have been added' do
    scenario 'should display a button allowing user to add photo' do
      visit '/photos'
      expect(page).to have_link "Add a photo"
    end
  end

  context 'photos have been added' do
    before do
      Photo.create(caption: "Loving lyf")
    end

    scenario 'display photos' do
      visit '/photos'
      expect(page).to have_content('Loving lyf')
    end
  end
end

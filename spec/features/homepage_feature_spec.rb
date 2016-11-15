require 'rails_helper'

feature 'homepage' do
  context 'no photos have been added' do
    scenario 'should display a button allowing user to add photo' do
      visit '/photos'
      expect(page).to have_button "Add a photo"
    end
  end
end

As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes" (Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
And I should see a total number of items returned by the search. (Note: "sweet potatoes" should yield >30,000 results)
Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"


require 'rails_helper'

RSpec.describe 'Foods Index Page', type: :feature do
  describe "When a user visits the foods index page by searching for an ingredient" do
    before(:each) do
      visit root_path

      fill_in :foods, with: "sweet potatoes"

      click_button "Search"
    end

    it 'They see the total number of results', :vcr do
      expect(current_path).to eq(foods_path)
      expect(page).to have_content("Foods with sweet potatoes")
      expect(page).to have_content("Results: 56850")
    end

    it 'They see the GTIN/UPC code, description, Brand owner, and ingredients for each food', :vcr do
      expect(page).to have_css("#foods div", count: 10)

      within("#foods") do
        expect(page).to have_content("GTIN/UPC: 832298010009")
        expect(page).to_not have_content("GTIN/UPC: 04656702273")
      end

      within ("#food-451884") do
        expect(page).to have_content("GTIN/UPC: 832298010009")
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
        expect(page).to have_content("Ingredients: ")
      end
    end
  end
end
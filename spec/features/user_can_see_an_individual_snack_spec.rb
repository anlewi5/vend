require 'rails_helper'

feature 'When a user visits a snack show page' do
  before do
    owner = Owner.create(name: "Sam's Snacks")

    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    matts  = owner.machines.create(location: "Matt's Un-mixed Drinks")

    dons.snacks.create!(snack: "White Castle Burger", price: "3.50")
    dons.snacks.create!(snack: "Pop Rocks", price: "1.50")
    dons.snacks.create!(snack: "Pop Rocks", price: "1.50")

    snack = matts.snacks.create!(snack: "White Castle Burger", price: "3.50")

    visit snack_path(snack)
  end

  scenario 'they see the snack name' do
    expect(page).to have_content("White Castle Burger")
  end
  scenario 'they see the snack price' do
    expect(page).to have_content("$3.5")
  end
  scenario "they see information about vending machines with that snack" do
    scenario 'they see the locations of vending machines with the snack' do
      expect(page).to have_content("Don's Mixed Drinks")
      expect(page).to have_content("Matt's Un-mixed Drinks")
    end
    scenario 'they see the average price for snacks in those vending machines' do
      expect(page).to have_content("Average Snack Price: $2.5")
      expect(page).to have_content("Average Snack Price: $3.5")
    end
    scenario 'they see a count of the different kinds of items in that vending machine' do
      expect(page).to have_content("Available: 1")
      expect(page).to have_content("Available: 1")
    end
  end
end

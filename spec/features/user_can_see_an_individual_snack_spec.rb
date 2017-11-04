require 'rails_helper'

feature 'When a user visits a snack show page' do
  scenario 'they see the snack name' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end
  scenario 'they see the snack price' do

  end
  scenario "they see information about vending machines with that snack" do
    scenario 'they see the snack locations of vending machines with the snack' do

    end
    scenario 'they see the average price for snacks in those vending machines' do

    end
    scenario 'they see a count of the different kinds of items in that vending machine' do

    end
  end
end

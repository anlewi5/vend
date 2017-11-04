require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end
  scenario 'they see the name and price of all the snacks associated with that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    #snacks
    #snacks

    visit machine_path(dons)

    expect(page).to have_content("White Castle Burger: $3.50")
    expect(page).to have_content("Pop Rocks: $1.50")
  end
end

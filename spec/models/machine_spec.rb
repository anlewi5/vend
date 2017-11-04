require 'rails_helper'

describe Machine do
  describe "instance methods" do
    describe "#average_snacks" do
      it "finds the average cost of all the machine's snacks" do
        owner = Owner.create(name: "Sam's Snacks")
        dons  = owner.machines.create(location: "Don's Mixed Drinks")
        dons.snacks.create!(snack: "White Castle Burger", price: "3.50")
        dons.snacks.create!(snack: "Pop Rocks", price: "1.50")

        expect(dons.average_snacks).to eq(2.5)
      end
    end
  end
end

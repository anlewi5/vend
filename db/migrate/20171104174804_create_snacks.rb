class CreateSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.string :snack
      t.float :price
    end
  end
end

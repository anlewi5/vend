class CreateMachinesAndSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :machines_snacks, id: false do |t|
      t.belongs_to :machine, index: true
      t.belongs_to :snack, index: true
    end
  end
end

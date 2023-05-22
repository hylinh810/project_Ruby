class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :model
      t.string :description
      t.string :condition
      t.string :finish
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end

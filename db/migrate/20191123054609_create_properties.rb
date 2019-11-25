class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :propert
      t.integer :rent
      t.text :address
      t.integer :building_age
      t.text :remarks
      t.string :namer
      t.string :station
      t.integer :minut
      t.string :namer1
      t.string :station1
      t.integer :minut1

      t.timestamps
    end
  end
end

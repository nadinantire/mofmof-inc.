class CreatePropeties < ActiveRecord::Migration[5.0]
  def change
    create_table :propeties do |t|
      t.text :property
      t.string :rent
      t.string :adress
      t.string :building
      t.text :remark

      t.timestamps
    end
  end
end

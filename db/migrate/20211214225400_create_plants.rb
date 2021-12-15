class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end

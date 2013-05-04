class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end

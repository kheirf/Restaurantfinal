class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :dishName
      t.string :description
      t.string :price

    end
  end
end

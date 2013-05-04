class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :customerName
      t.string :contactNo
      t.string :email
      t.string :password
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :product_id
      t.integer :price
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end

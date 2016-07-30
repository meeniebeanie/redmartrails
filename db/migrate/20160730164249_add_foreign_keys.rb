class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :users, index: true, foreign_key: true
    add_reference :reviews, :products, index: true, foreign_key: true

    add_reference :users, :reviews, index: true, foreign_key: true
    add_reference :users, :products, index: true, foreign_key: true

    add_reference :products, :reviews, index: true, foreign_key: true
    add_reference :products, :users, index: true, foreign_key: true
  end

end

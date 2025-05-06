class CreateCarts < ActiveRecord::Migration[8.0]
  def change
    create_table :carts do |t|
      t.string :user
      t.string :
      t.string :reference

      t.timestamps
    end
  end
end

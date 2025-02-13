class CreateCarts < ActiveRecord::Migration[8.0]
  def change
    create_table :carts do |t|
      t.string :secret_id

      t.timestamps
    end
  end
end

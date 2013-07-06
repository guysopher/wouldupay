class CreateCrowds < ActiveRecord::Migration
  def change
    create_table :crowds do |t|
      t.integer :price
      t.string :title
      t.string :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end

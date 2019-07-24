class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.integer :walker_id
      t.integer :dog_id
      t.integer :walker_rating
      t.integer :dog_rating

      t.timestamps
    end
  end
end

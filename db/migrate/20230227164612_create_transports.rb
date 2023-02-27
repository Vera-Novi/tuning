class CreateTransports < ActiveRecord::Migration[7.0]
  def change
    create_table :transports do |t|
      t.string :brand
      t.string :horse
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

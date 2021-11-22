class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end

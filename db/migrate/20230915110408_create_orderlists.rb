class CreateOrderlists < ActiveRecord::Migration[7.0]
  def change
    create_table :orderlists do |t|
      t.references :pizza, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :size
      t.float :price

      t.timestamps
    end
  end
end

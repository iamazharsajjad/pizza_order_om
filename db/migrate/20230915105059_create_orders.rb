class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.boolean :completed
      t.float :total_price
      t.string :discount_code
      t.string :promotion_code

      t.timestamps
    end
  end
end

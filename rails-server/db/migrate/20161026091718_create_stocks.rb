class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :medium
      t.integer :stock_level
      t.integer :stock_threshold
      t.integer :buy_price
      t.integer :sell_price
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

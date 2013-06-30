class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.integer :user_id
      t.integer :drug_id
      t.integer :quantity_available
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :stocks
  end
end

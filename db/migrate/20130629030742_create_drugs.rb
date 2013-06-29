class CreateDrugs < ActiveRecord::Migration
  def self.up
    create_table :drugs do |t|
      t.string :name, :null => false
      t.integer :price
      t.string :general_name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :drugs
  end
end

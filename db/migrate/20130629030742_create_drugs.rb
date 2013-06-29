class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs, :id  do |t|
      t.string :name, :null => false
      t.integer :price
      t.string :general_name, :null => false

      t.timestamps
    end
  end
end

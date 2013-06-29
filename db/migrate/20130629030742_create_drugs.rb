class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :drug_name, :null => false
      t.integer :price
      t.string :general_name, :null => false

      t.timestamps
    end
  end
end

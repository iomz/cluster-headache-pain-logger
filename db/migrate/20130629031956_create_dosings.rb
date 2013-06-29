class CreateDosings < ActiveRecord::Migration
  def change
    create_table :dosings, :id do |t|
      t.integer :attack_id, :null => false
      t.integer :drug_id, :null => false
      t.datetime :dosed_at

      t.timestamps
    end
  end
end

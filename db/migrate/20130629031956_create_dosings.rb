class CreateDosings < ActiveRecord::Migration
  def self.up
    create_table :dosings do |t|
      t.integer :attack_id, :null => false
      t.integer :drug_id, :null => false
      t.datetime :dosed_at

      t.timestamps
    end
  end

  def self.down
    drop_table :dosings
  end
end

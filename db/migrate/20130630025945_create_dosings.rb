class CreateDosings < ActiveRecord::Migration
  def self.up
    create_table :dosings do |t|
      t.integer :user_id, null: false
      t.integer :attack_id, null: false
      t.integer :drug_id,   null: false
      t.datetime :dosed_at

      t.timestamps
    end
  end
end

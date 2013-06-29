class CreatePrescriptions < ActiveRecord::Migration
  def self.up
    create_table :prescriptions do |t|
      t.integer :user_id, :null => false
      t.date :prescribed_at, :null => false
      t.integer :drug_id, :null => false
      t.integer :quantity, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :prescriptions
  end
end

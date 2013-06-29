class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions, :id do |t|
      t.integer :user_id, :null => false
      t.date :prescribed_at, :null => false
      t.integer :drug_id, :null => false
      t.integer :quantity, :null => false

      t.timestamps
    end
  end
end

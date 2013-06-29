class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :user_name, :null => false
      t.date :prescribed_at, :null => false
      t.integer :drug_id, :null => false
      t.integer :quantity, :null => false

      t.timestamps
    end
  end
end

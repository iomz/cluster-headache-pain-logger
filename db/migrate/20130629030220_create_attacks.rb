class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :user_name, :null => false
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :pain_level
      t.string :comment

      t.timestamps
    end
  end
end

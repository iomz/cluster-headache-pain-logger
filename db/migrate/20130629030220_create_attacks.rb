class CreateAttacks < ActiveRecord::Migration
  def self.up
    create_table :attacks do |t|
      t.integer :user_id
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :pain_level
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :attacks
  end
end

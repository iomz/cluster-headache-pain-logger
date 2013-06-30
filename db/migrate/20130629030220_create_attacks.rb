class CreateAttacks < ActiveRecord::Migration
  def self.up
    create_table :attacks do |t|
      t.integer :user_id, :null => false
      t.datetime :started_at, :default => DateTime.new
      t.datetime :ended_at, :default => DateTime.new
      t.integer :pain_level, :default => 5
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :attacks
  end
end

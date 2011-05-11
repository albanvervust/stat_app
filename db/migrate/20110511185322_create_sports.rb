class CreateSports < ActiveRecord::Migration
  def self.up
    create_table :sports do |t|
      t.string :activite

      t.timestamps
    end
  end

  def self.down
    drop_table :sports
  end
end

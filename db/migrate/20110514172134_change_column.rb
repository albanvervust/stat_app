class ChangeColumn < ActiveRecord::Migration
  def self.up
    add_column :infos, :age, :date
  end

  def self.down
    remove_column :infos, :age
  end
end

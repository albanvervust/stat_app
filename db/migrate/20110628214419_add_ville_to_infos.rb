class AddVilleToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :ville_id, :integer
  end

  def self.down
    remove_column :infos, :ville_id, :integer
  end
end

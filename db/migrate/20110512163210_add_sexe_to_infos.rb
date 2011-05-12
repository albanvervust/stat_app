class AddSexeToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :sexe, :boolean
  end

  def self.down
    remove_column :infos, :sexe
  end
end

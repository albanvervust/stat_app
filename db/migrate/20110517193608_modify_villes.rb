class ModifyVilles < ActiveRecord::Migration
  def self.up
    change_column :villes, :country, :integer
    change_column :villes, :region, :integer
    change_column :villes, :latitude, :decimal, :precision => 10, :scale => 7
    change_column :villes, :longitude, :decimal, :precision => 10, :scale => 7
    rename_column :villes, :country, :country_id
    rename_column :villes, :region, :region_id
    rename_column :villes, :city, :asciiname
    rename_column :villes, :accentcity, :isoname
    
  end

  def self.down
    rename_column :villes, :asciiname, :city
    rename_column :villes, :isoname, :accentcity
    rename_column :villes, :country_id, :country
    rename_column :villes, :region_id, :region
    change_column :villes, :country, :string
    change_column :villes, :region, :string
    change_column :villes, :latitude, :string
    change_column :villes, :longitude, :string

  end
end

class CreateVilles < ActiveRecord::Migration
  def self.up
    create_table :villes do |t|
      t.string :country
      t.string :city
      t.string :accentcity
      t.string :region
      t.integer :population
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :villes
  end
end

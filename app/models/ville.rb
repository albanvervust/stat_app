# == Schema Information
# Schema version: 20110517193608
#
# Table name: villes
#
#  id         :integer         not null, primary key
#  country_id :integer(255)
#  asciiname  :string(255)
#  isoname    :string(255)
#  region_id  :integer(255)
#  population :integer
#  latitude   :decimal(, )
#  longitude  :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Ville < ActiveRecord::Base
  belongs_to :region
  belongs_to :country
  has_many :info
end

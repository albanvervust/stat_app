# == Schema Information
# Schema version: 20110516201555
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Country < ActiveRecord::Base
  has_many :villes
  has_many :infos
  
end

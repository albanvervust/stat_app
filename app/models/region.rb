# == Schema Information
# Schema version: 20110516201555
#
# Table name: regions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Region < ActiveRecord::Base
  has_many :ville
end

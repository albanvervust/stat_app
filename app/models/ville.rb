# == Schema Information
# Schema version: 20110512170448
#
# Table name: villes
#
#  id         :integer         not null, primary key
#  country    :string(255)
#  city       :string(255)
#  accentcity :string(255)
#  region     :string(255)
#  population :integer
#  latitude   :string(255)
#  longitude  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ville < ActiveRecord::Base
end

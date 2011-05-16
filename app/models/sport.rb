# == Schema Information
# Schema version: 20110512170448
#
# Table name: sports
#
#  id         :integer         not null, primary key
#  activite   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Sport < ActiveRecord::Base
  has_and_belongs_to_many :info
end

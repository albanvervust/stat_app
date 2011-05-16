# == Schema Information
# Schema version: 20110512170448
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  age        :integer
#  taille     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Info < ActiveRecord::Base
  has_and_belongs_to_many :sport
  validates_presence_of :age, :taille, :message => "Fill the form properly."
end

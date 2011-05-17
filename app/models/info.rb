# == Schema Information
# Schema version: 20110516201555
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  age        :date
#  taille     :integer
#  created_at :datetime
#  updated_at :datetime
#  sexe       :boolean
#

class Info < ActiveRecord::Base
  has_and_belongs_to_many :sport
#@belongs_to :ville
  validates_presence_of :age, :taille, :message => "Fill the form properly."
end

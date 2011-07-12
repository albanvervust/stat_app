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
  attr_accessible :sexe, :age, :taille, :country_tokens #:instant_places
  has_and_belongs_to_many :sport
  #attr_reader :instant_places
  attr_reader :country_tokens
  belongs_to :country
  validates_presence_of :age, :taille, :message => "Fill the form properly."
  
  #def instant_places=(ids)
   # self.country_ids = ids.split(",")
  #end
  
  def country_tokens=(id)
    #self.country_id = ids.split(",")
  end
  
end

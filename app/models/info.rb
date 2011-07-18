# == Schema Information
# Schema version: 20110712202032
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  age        :date
#  taille     :integer
#  created_at :datetime
#  updated_at :datetime
#  sexe       :boolean
#  country_id :integer
#

class Info < ActiveRecord::Base
  
  attr_accessible :sexe, :age, :taille, :country_tokens 
  has_and_belongs_to_many :sport
  belongs_to :country
  validates_presence_of :age, :taille, :message => "Fill the form properly."
  attr_reader :country_tokens
  #attr_reader donne acces au code javascript qui fait la recherche via json.
  
  def country_tokens=(id) 
    self.country_id = id
    #test de la methode du batch sur country
    #self.country_id = id.find_in_batches(:batch_size => 5000) do |countries|
  end
  #end
end

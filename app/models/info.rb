class Info < ActiveRecord::Base
  has_and_belongs_to_many :sport
  #validates_presence_of :age, :taille, :sexe, :message => "Vous devez remplir l'ensemble des informations pour le calcul."
end

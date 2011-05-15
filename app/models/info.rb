class Info < ActiveRecord::Base
  has_and_belongs_to_many :sport
  validates_presence_of :age, :taille, :message => "Fill the form properly."
end

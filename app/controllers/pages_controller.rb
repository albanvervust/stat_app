class PagesController < ApplicationController
  
  def home
    @title = "Accueil"
  end

  def contact
    @title = "Contactez-nous!"
  end
  
  def about
    @title = "A propos de nous"
  end

end

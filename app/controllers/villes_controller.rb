class VillesController < ApplicationController
  
  def index
    @villes = Ville.all
    respond_to do |format|
      format.html
      format.json { render :json => @villes }
    end
  end
end
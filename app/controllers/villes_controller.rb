class VillesController < ApplicationController
  
  def index
    @ville = Ville.all
    respond_to do |format|
      format.html
      format.json { render :json => @ville }
    end
  end
end
class VillesController < ApplicationController
  
  #def index
#    @villes = Ville.all
 #   respond_to do |format|
  #    format.html
   #   format.json { render :json => @villes }
    #end
  #end
 
  def index
    @villes = Ville.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @villes }
      format.json { render :json => @villes.map(&:attributes) }
    end
  end
   
  def show
    @ville = Ville.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ville }
    end

    @infos = @user.infos.paginate(:page => params[:page])
    @title = @user.name
  end
  
end
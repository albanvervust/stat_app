class CountriesController < ApplicationController
  
  def index
    @countries = Country.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @countries.map(&:attributes) }
    end
  end
  
  def show
    @country = Country.find(params[:id])
    @infos = @country.infos.paginate(:page => params[:page])
    @title = @country.name
    
       
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @country }
    end

  end
end
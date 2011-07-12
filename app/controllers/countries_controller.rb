class CountriesController < ApplicationController
  
  def index
    @countries = Country.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @countries.map(&:attributes) }
    end
  end
end
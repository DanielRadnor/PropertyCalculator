class PropertiesController < ApplicationController
  
  def index
    @property = Property.all
  end
  
  def new
    @property = Property.new
  end
  
  def create
    @property = Property.new(property_params)
    @property.sector = Sector.first
    if @property.save
      #flash[:success] = "Property was saved successfully"
      redirect_to properties_path
      #redirect_to property_path(@property) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def property_params
    params.require(:property).permit(:property_name, :address, :postcode)
  end
  
  
end

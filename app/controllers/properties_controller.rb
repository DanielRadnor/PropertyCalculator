class PropertiesController < ApplicationController
  
  def index
    @property = Property.all
  end
  
  def new
    @property = Property.new
  end

  def edit
    @property = Property.find(params[:id])
  end
    
  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:success] = "Property was saved successfully"
      redirect_to properties_path
      #redirect_to property_path(@property) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      flash[:success] = "Article was saved successfully"
      redirect_to property_path(@property)
    else
       render 'edit'
    end
  end
  
  def show
    @property = Property.find(params[:id])
  end
  
  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    flash[:danger] = "Article was saved successfully"
    redirect_to properties_path
  end
  
  # -----------------------------------
  
  private
  
  def property_params
    params.require(:property).permit(:property_name, :address, :postcode, :sector_id)
  end
  
  
end

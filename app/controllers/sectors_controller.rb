class SectorsController < ApplicationController
  
  def index
    @sector = Sector.all
  end
  
  def new
    @sector = Sector.new
  end
  
  def create
    @sector = Sector.new(sector_params)
    if @sector.save
      #flash[:success] = "Sector was saved successfully"
      redirect_to sectors_path
      #redirect_to sector_path(@sector) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def sector_params
    params.require(:sector).permit(:sector_name)
  end
  
end

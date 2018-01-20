class RentalDetailsController < ApplicationController
 
  def index
    @rental_detail = RentalDetail.all
  end
  
  def new
    @rental_detail = RentalDetail.new
  end
  
  def create
    @rental_detail = RentalDetail.new(rental_detail_params)
    if @rental_detail.save
      #flash[:success] = "Rental details were saved successfully"
      redirect_to rental_details_path
      #redirect_to rental_detail_path(@rental_detail) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def rental_detail_params
    params.require(:rental_detail).permit(:number_of_beds, :weekly_rent, :term_weeks, :occupancy, :scenario_id)
  end
  
  
end


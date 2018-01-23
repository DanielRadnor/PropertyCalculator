class ValuationDetailsController < ApplicationController
   
  def index
    @valuation_detail = ValuationDetail.all
  end
  
  def new
    @valuation_detail = ValuationDetail.new
  end
  
  def create
    @valuation_detail = ValuationDetail.new(valuation_detail_params)
    if @valuation_detail.save
      #flash[:success] = "Valuation details were saved successfully"
      redirect_to valuation_details_path
      #redirect_to valuation_detail_path(@valuation_detail) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def valuation_detail_params
    params.require(:valuation_detail).permit(:net_intial_yield, :purchasers_costs, :scenario_id)
  end
end

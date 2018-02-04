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

  def update
    @valuation_detail = ValuationDetail.find(params[:id])
    if @valuation_detail.update(valuation_detail_params)
      flash[:success] = "Valuation Detail was saved successfully"
      redirect_to valuation_detail_path(@scenario)
    else
       render 'edit'
    end
  end
    
  def show
    @valuation_detail = ValuationDetail.find(params[:id])
  end
  
  def destroy
    @valuation_detail = ValuationDetail.find(params[:id])
    @valuation_detail.destroy
    flash[:danger] = "Valuation Detail was deleted successfully"
    redirect_to valuation_details_path
  end
  
  # -----------------------------------
  
  private
  
  def valuation_detail_params
    params.require(:valuation_detail).permit(:net_intial_yield, :purchasers_costs, :scenario_id)
  end
end

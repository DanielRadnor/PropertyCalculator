class SetupCostsController < ApplicationController
   
  def index
    @setup_cost = SetupCost.all
  end
  
  def new
    @setup_cost = SetupCost.new
  end
  
  def create
    @setup_cost = SetupCost.new(setup_cost_params)
    if @setup_cost.save
      #flash[:success] = "Valuation details were saved successfully"
      redirect_to setup_costs_path
      #redirect_to setup_cost_path(@setup_cost) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def setup_cost_params
    params.require(:setup_cost).permit(:purchase_price, :sdlt, :acquisition_fee, :debt_arrangement_fee, :equity_raising_fee, :legal_fee, :survey_fee, :admin_fee, :contingency, :scenario_id)
  end
end

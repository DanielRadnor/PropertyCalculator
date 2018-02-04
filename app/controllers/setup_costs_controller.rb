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

  def update
    @setup_cost = SetupCost.find(params[:id])
    if @setup_cost.update(setup_cost_params)
      flash[:success] = "Setup Cost was saved successfully"
      redirect_to setup_cost_path(@scenario)
    else
       render 'edit'
    end
  end
    
  def show
    @setup_cost = SetupCost.find(params[:id])
  end
  
  def destroy
    @setup_cost = SetupCost.find(params[:id])
    @setup_cost.destroy
    flash[:danger] = "Setup Cost was deleted successfully"
    redirect_to setup_costs_path
  end
  
  # -----------------------------------
  
  private
  
  def setup_cost_params
    params.require(:setup_cost).permit(:purchase_price, :sdlt, :acquisition_fee, :debt_arrangement_fee, :equity_raising_fee, :legal_fee, :survey_fee, :admin_fee, :contingency, :scenario_id)
  end
end

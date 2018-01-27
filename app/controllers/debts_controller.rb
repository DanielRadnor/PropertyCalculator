class DebtsController < ApplicationController
     
  def index
    @debt = Debt.all
  end
  
  def new
    @debt = Debt.new
  end
  
  def create
    @debt = Debt.new(debt_params)
    if @debt.save
      #flash[:success] = "Valuation details were saved successfully"
      redirect_to debts_path
      #redirect_to debt_path(@debt) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def debt_params
    params.require(:debt).permit(:ltv, :scenario_id)
  end
  
end

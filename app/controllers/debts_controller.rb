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

  def update
    @debt = Debt.find(params[:id])
    if @debt.update(debt_params)
      flash[:success] = "Debt was saved successfully"
      redirect_to debt_path(@scenario)
    else
       render 'edit'
    end
  end
    
  def show
    @debt = Debt.find(params[:id])
  end
  
  def destroy
    @debt = Debt.find(params[:id])
    @debt.destroy
    flash[:danger] = "Debt was deleted successfully"
    redirect_to debts_path
  end  
  
  # -----------------------------------
  
  private
  
  def debt_params
    params.require(:debt).permit(:ltv, :scenario_id)
  end
  
end

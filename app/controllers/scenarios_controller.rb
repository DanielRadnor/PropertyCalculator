class ScenariosController < ApplicationController
  
  def index
    @scenario = Scenario.all
  end
  
  def new
    @scenario = Scenario.new
  end
  
  def create
    @scenario = Scenario.new(scenario_params)
    if @scenario.save
      #flash[:success] = "Scenario was saved successfully"
      redirect_to scenarios_path
      #redirect_to scenario_path(@scenario) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  def update
    @scenario = Scenario.find(params[:id])
    if @scenario.update(scenario_params)
      flash[:success] = "Scenario was saved successfully"
      redirect_to scenario_path(@scenario)
    else
       render 'edit'
    end
  end
  
  def show
    @scenario = Scenario.find(params[:id])
  end
  
  def destroy
    @scenario = Scenario.find(params[:id])
    @scenario.destroy
    flash[:danger] = "Scenario was deleted successfully"
    redirect_to scenarios_path
  end
  
  # -----------------------------------
  
  private
  
  def scenario_params
    params.require(:scenario).permit(:scenario_name, :description, :property_id)
  end
  
  
end

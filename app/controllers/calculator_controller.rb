class CalculatorController < ApplicationController
  
  def index
    @calc = Calculator.all
  end
  
  def new
    @calc = Calculator.new
  end
  
  def create
    @calc = Calculator.new(calc_params)
    if @calc.save
      #flash[:success] = "Article was saved successfully"
      redirect_to calculator_index_path
      #redirect_to calculator_path(@calc) #this is to redirect to the show page
    else
      render 'new'
    end    
  end
  
  
  
  # -----------------------------------
  
  private
  
  def calc_params
    params.require(:calculator).permit(:value_a, :value_b)
  end
  
  
end

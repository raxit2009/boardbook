class ExpensesController < ApplicationController

	def index
	
	end

	def expense_list
		@expense = Expense.all
	end

	# def import
	#   Expense.import(params[:file])
	#   redirect_to root_url, notice: "Expanse imported."
	# end

	def import
    	Expense.import(params[:file])
    	redirect_to root_url, notice: "Products imported."
  	end

	def accessible_attributes
		params.require(:expense).permit(:name,:mtd_total,:ytd_total)
	end
end

class ChildExpensesController < ApplicationController
	def index
	
	end

	def import
	  ChildExpense.import(params[:file])
	  redirect_to root_url, notice: "Child Expanse imported."
	end
end

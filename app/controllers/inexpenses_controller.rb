class InexpensesController < ApplicationController
	def index
	
	end

	def import
	  Inexpense.import(params[:file])
	  redirect_to root_url, notice: "Expanse imported."
	end

	def detail_expense
		@related_inexpense = Inexpense.where("expense_id =?", params[:expense_id])
	end

	def detail_category
		@related_category = Category.find(params[:id])
		@related_incategory = Incategory.where("account_number =?", @related_category.account_number)
	end

end

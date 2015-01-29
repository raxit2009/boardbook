class ChildExpense < ActiveRecord::Base

	def self.import(file)
	  	CSV.foreach(file.path, headers: true) do |row|
	      child_expense = find_by_id(row["id"]) || new
	      parameters = ActionController::Parameters.new(row.to_hash)
	      child_expense.update(parameters.permit(:name,:mtd_total,:ytd_total,:expense_id))
	      child_expense.save!
    	end
	end
end

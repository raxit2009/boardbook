class Expense < ActiveRecord::Base

	require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      product_hash = row.to_hash # exclude the price field
      product = Expense.where(id: product_hash["id"])

      if product.count == 1
        product.first.update_attributes(product_hash)
      else
        Expense.create!(product_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)



	# def self.import(file)
	#   	CSV.foreach(file.path, headers: true) do |row|
	#       expense = find_by_id(row["id"]) || new
	#       parameters = ActionController::Parameters.new(row.to_hash)
	#       expense.update(parameters.permit(:name,:mtd_total, :ytd_total))
	#       expense.save!
 #    	end
	# end

	def self.open_spreadsheet(file)
  		case File.extname(file.original_filename)
    	when ".csv" then Roo::CSV.new(file.path, file_warning: :ignore)
    	when ".xls" then Roo::Excel.new(file.path, file_warning: :ignore)
    	when ".xlsx" then Roo::Excelx.new(file.path, file_warning: :ignore)
    	else raise "Unknown file type: #{file.original_filename}"
  		end
	end


end

require 'csv'
class CopyFile
  def self.create_duplicate_file(file_name)
    
    CSV.open(file_name, "wb") do |output_row|
      output_row << CSV.open('input.csv', 'r') { |csv| csv.first }
      CSV.foreach('input.csv', headers: true) do |row|
      output_row << row
      end
    end
  end
end

puts "Insert duplicate file name"
file_name = gets.chomp
file_name = file_name+".csv"
CopyFile.create_duplicate_file(file_name)

puts "\nDuplicate File Created."
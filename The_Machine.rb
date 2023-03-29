categories = {
  "1" => "If, Else, Elsif",
  "2" => "Strings",
  "3" => "Built-in Methods for strings and numbers",
  "4" => "Loop basics",
  "5" => "Array basics",
  "6" => "Hash basics",
  "7" => "Functions",
  "8" => "Mapping Arrays to new ones",
  "9" => "Array >> Shoveling",
  "10" => "Reduce an Array",
  "11" => "Data Type Conversions: GitHub link broken_made up questions",
  "12" => "Loop within a Loop"
}

puts "Please select a category by entering a number:"
categories.each do |key, value|
  puts "#{key}. #{value}"
end

selected_category = gets.chomp
puts "You have selected category #{selected_category}: #{categories[selected_category]}"

# Here you can add your code to display a random question based on the selected category

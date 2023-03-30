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

def display_question(category)
  filename = "#{category}.txt"
  if File.exist?(filename)
    questions = File.readlines(filename, chomp: true)
    if questions.any?
      puts "Here is a random question from category #{category}:"
      puts ""
      puts questions.sample
    else
      puts "There are no questions in this category."
    end
  else
    puts "Invalid category selected."
  end
end

loop do
  puts "Please select a category by entering a number:"
  categories.each do |key, value|
    puts "#{key}. #{value}"
  end

  selected_category = gets.chomp
  puts "You have selected category #{selected_category}: #{categories[selected_category]}"

  display_question(selected_category)

  loop do
    puts ""
    puts ""
    puts ""
    puts "'done' to end the program"
    puts "'restart' to restart the program"
    puts "'new' to get a new question in the same category."
    response = gets.chomp.downcase
    if response == "done"
      exit
    elsif response == "restart"
      break
    elsif response == "new"
      display_question(selected_category)
    else
      puts "Invalid response."
    end
  end
end











=begin

If I want to revert back to when the user didn't have the option of being asked for a new question or to end program etc. uncomment the code below and comment the code above.

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

filename = "#{selected_category}.txt"
if File.exist?(filename)
  questions = File.readlines(filename, chomp: true)
  if questions.any?
    puts "Here is a random question from category #{selected_category}:"
    puts questions.sample
  else
    puts "There are no questions in this category."
  end
else
  puts "Invalid category selected."
end
=end
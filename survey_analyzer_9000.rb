require_relative "lib/survey"

loop do
  puts "Please enter the questions filename, including the .csv"
  @questions_filename = gets.chomp #get input from user

  if @questions_filename.include?(".csv")
    @survey = Survey.new(@questions_filename)
    break
  else
    puts "That isn't a CSV file. Please try again."
  end
end

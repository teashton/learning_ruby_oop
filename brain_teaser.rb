# require 'pry'
# puts 'welcome to lowest array script'
#
# puts ' please input your numbers - 1,2,3,4,5,'
#
# def calculate(min = true)
#     numbers_array = user_input.split(',').map(&:to_i) #split turns it into an array
#     lowest = numbers_array.first # initial lowest value
#
#
#     numbers_array.each do |numbers| #ask user if the ywant highest or lowest
#
#
#     if number < lowest
#     lowest = numbers
#     end
#   end
# end
# puts "the lowest number is : #{lowest}"  # if we have an array we usually loop0 or iterate it
#
# # map gereates a brand new array ex and does the following
# # exaple_array = [2,3,4,5,6]
# # map_array = []
# # example_array.each do |element|
# # map_array << element.to_i
# # end
# # return map_array
# #map does all that on its own
#
# # bidning.pry
# require 'pry'
#
# puts 'Welcome To Lowest Array Script!'
# puts 'Please Input Your Numbers - 1,2,3,4,5'
#
# # Long hand map example
# # example_array = ['1','2','3','4','5']
# # map_array = []
# # example_array.each do |element|
# #   map_array << element.to_i
# # end
# # return map_array

def calculate
  numbers_array = gets.strip.split(',').map(&:to_i)
  # Initial lowest value
  result = numbers_array.first
  # Ask the user if they want highest or lowest
  puts 'Do you want highest or lowest?'
  user_choice = gets.strip

  if user_choice == 'lowest'
    numbers_array.each do |number|
      if number < result
        result = number
      end
    end
  else
    numbers_array.each do |number|
      if number > result
        result = number
      end
    end
  end
  puts "The #{user_choice} number is: #{result}"
end

calculate

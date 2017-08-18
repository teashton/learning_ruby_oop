@array = []

def add_element
  puts 'please input a numer to add to the array'
  element = gets.strip
  puts 'added to array'
  @array << element
  puts 'numbers in your array'
  puts @array
  add_element
end

add_element

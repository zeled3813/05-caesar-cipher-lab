def caesar_encode(string, offset)
  lower_case = [*("a".."z")]
  string.split("").collect do |letter|
    if letter == letter.upcase && lower_case.include?(letter.downcase)
      new_index = (lower_case.index(letter.downcase) + offset) % 26
      letter = lower_case[new_index].upcase
    elsif lower_case.include?(letter)
      new_index = (lower_case.index(letter) + offset) % 26
      letter = lower_case[new_index]
    else
      letter
    end
  end.join
end

puts "What would you like to encode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_encode(user_string,user_offset)

def caesar_decode(string, offset)
  caesar_encode(string, -offset)
end
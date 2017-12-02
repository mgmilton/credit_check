#This is a classless credit check.
#Hoping to restructure the code to have classes by the end of the weekend.

puts "Let's check a card number's validity"
card_number = gets.chomp.to_s
card_digits = card_number.reverse.chars
double = []
sum = []
total_sum = 0

card_digits.each_with_index do |value, index|
    if index.even?
      double << value.to_i
    else
      double << value.to_i * 2
    end
  end

double.each do |value|
  if value % 10 == value
    sum << value
  else
    mod_dig = value % 10
    sum << mod_dig + 1
  end
end

sum.each do |value|
  total_sum+= value
end
p total_sum

if total_sum % 10 == 0
  puts "Valid"
else
  puts "Invalid"
end


#def summer (double)
#   double.map do |num|
#     num[0] + num[1]
#   each_with_inde

#p double
#axioms and set theory
#edge case not including in this set
#number that is false
#number too short, too long
#number valid or Invalid

require 'pry'
class CreditCheck
  attr :double, :digits_sum, :card_digits

  def initialize(double, digits_sum= 0, card_digits)
    @double = double
    @digits_sum = digits_sum
    @card_digits = card_digits
  end

  def card_getter(card_digits)
    puts "Let's check a card number's validity"
    card_number = gets.chomp.to_s
    @card_digits = card_number.reverse.chars
  end

  def card_digits_doubler
    @card_digits.each_with_index do |val, index|
      if index.even?
          @digits_sum += val.to_i
      else
        @double = val.to_i * 2
      end
    end
  end

  def cards_digits_summer
    #binding.pry
    if @double < 10
      @digits_sum += @double
    else
      @double = @double.to_s
      @digits_sum += @double[1].to_i + @double[0].to_i
    end
  end

  def printer
    if @digits_sum % 10 == 0
      puts "Valid"
    else
      puts "Invalid"
    end
  end
end

number = CreditCheck.new(7189476916723,0,79927398713)
p "Number: #{number.inspect}"

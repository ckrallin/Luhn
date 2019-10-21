module Luhn
  attr_accessor :number

  def initialize(number)
    if number.to_s.length > 16 && number.to_s.length < 15
      return false
    end
    @number = number
  end


  def self.is_valid?(number)
    a = []
    a = number.to_s.reverse.split(//)
    a.map! { |i| i.to_i}
    total_sum = a.map.each_with_index.sum do |i,j|
      if j % 2 != 0
        if i * 2 > 9
          i * 2 - 9
        else
          i *2
        end
      else
        i
      end
    end
    if total_sum % 10 == 0
      return true
    else
      return false
    end
  end
end
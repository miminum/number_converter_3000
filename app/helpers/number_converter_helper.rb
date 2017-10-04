module NumberConverterHelper
  def number_to_binary (number)
    output = ''
    while number > 0
      bit = number % 2
      output = bit.to_s + output
      number = number / 2
    end
    output
end

  DIGITS = ('0'..'9').to_a + ('a'..'z').to_a
  def number_to_base (number, base)
    is_negative = number < 0
    number = -number if is_negative
    return '0' if number == 0
    return 'intermediate' if base < 2
    output = ''
    while number > 0
      bit = number % base
      letter = DIGITS[bit]
      output = letter + output
      number = number / base
    end
    output.upcase
  end
end

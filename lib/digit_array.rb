module DigitArray
  ##
  # n - an integer (try 1, or 5, for example)
  # digits - list of digits in this imaginary number - try weird lists like:
  #   - [0, 1, 2]
  #   - [nil, :foo, :bar]
  #   - ['hey', 'ho', 'let', 'us', 'go']
  # places - the number of places you want in the output array
  #
  # ex:
  #   convert(3, [0, 1, 2, 3, 4, 5], 2)
  #   => [0, 3]
  #
  #   convert(6, ['-', 'a', 'b', 'c'], 3)
  #   => ['-', 'a', 'b']
  #
  #   convert(11, ['Foo', 'Bar', 'Baz'], 4).join
  #   => "FooBarFooBaz"
  def self.convert(n, digits, places)
    base = digits.length
    result = [digits[0]] * places
    remaining = n

    (-places..-1).each do |i|
      place_value = base**(i.abs-1)
      digit = remaining / place_value
      result[i] = digits[digit]
      remaining -= digit*place_value
    end

    result
  end
end

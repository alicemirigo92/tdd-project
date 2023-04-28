class Solver
  def factorial(number)
    raise 'Number cannot be Negative' if number.negative?

    result = 1
    while number.positive?
      result *= number
      number -= 1
    end
    result
  end

  def reverse(str)
    raise ArgumentError, 'string must be a string' unless str.is_a? String

    str.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end

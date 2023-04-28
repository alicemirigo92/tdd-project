class Solver
  def factorial(n)
    raise ArgumentError, "N must be a positive integer or zero" if n < 0
    result = 1
    for i in 1..n
      result *= i
    end
    return result
  end

  def reverse(word)
    return word.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      return "fizzbuzz"
    elsif n % 3 == 0
      return "fizz"
    elsif n % 5 == 0
      return "buzz"
    else
      return n.to_s
    end
  end
end

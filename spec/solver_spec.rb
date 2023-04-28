require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#Factorial' do
    it 'returns the factorial of a given integer N' do
      expect(@solver.factorial(5)).to eq 120
      expect(@solver.factorial(7)).to eq 5_040
      expect(@solver.factorial(9)).to eq 362_880
    end

    it 'returns 1 when given 0 as input' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'raises an error if given a negative number' do
      expect { @solver.factorial(-1) }.to raise_error('Number cannot be Negative')
    end
  end

  context '#Reverse-string' do
    it 'reverses the characters of a given string' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end

    it 'reverses the characters of a string with multiple words' do
      expect(@solver.reverse('hello world!')).to eq '!dlrow olleh'
    end

    it 'reverses the characters of a string containing symbols and digits' do
      expect(@solver.reverse('')).to eq ''
      expect(@solver.reverse('@#₦%&')).to eq '&%₦#@'
      expect(@solver.reverse('12345')).to eq '54321'
      expect(@solver.reverse('!@#098')).to eq '890#@!'
    end
  end

  context '#Fizzbuzz' do
    it 'returns a string representation of a given number' do
      expect(@solver.fizzbuzz(4)).to eq '4'
    end

    it 'returns "fizz" when given a number divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
      expect(@solver.fizzbuzz(21)).to eq 'fizz'
      expect(@solver.fizzbuzz(33)).to eq 'fizz'
    end

    it 'returns "buzz" when given a number divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq 'buzz'
      expect(@solver.fizzbuzz(25)).to eq 'buzz'
      expect(@solver.fizzbuzz(175)).to eq 'buzz'
      expect(@solver.fizzbuzz(98_650)).to eq 'buzz'
    end

    it 'returns "fizzbuzz" when given a number divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(45)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(60)).to eq 'fizzbuzz'
    end

    it 'returns the string representation of the input when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq '7'
      expect(@solver.fizzbuzz(11)).to eq '11'
      expect(@solver.fizzbuzz(47)).to eq '47'
      expect(@solver.fizzbuzz(59)).to eq '59'
      expect(@solver.fizzbuzz(119)).to eq '119'
    end
  end
end

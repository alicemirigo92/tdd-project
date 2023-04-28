require_relative '../solver'

class ValueError < StandardError
end


    it 'raises an error when given a negative integer' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ValueError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when given a multiple of 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" when given a multiple of 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given a multiple of both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string when not divisible by 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(1)).to eq('1')
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end
end

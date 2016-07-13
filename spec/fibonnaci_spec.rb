require 'fibonnaci'

RSpec.describe Fibonnaci, focus: true do
  let(:my_fibonnaci) { Fibonnaci.new }
  describe '#sum_even_numbers' do
    it 'returns 4,613,732 when max is set to 4,000,000' do
      expect(my_fibonnaci.sum_even_numbers(4_000_000)).to eq 4_613_732
    end
  end
  describe '#find' do
    it 'returns the correct value for a specified position' do
      expect(my_fibonnaci.find(21)).to eq 6765
    end
  end
  describe '#generate' do
    it 'returns a valid fibonnaci sequence as long as requested' do
      expected_result = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
      expect(my_fibonnaci.generate_sequence(10)).to eq(expected_result)
    end
  end
end

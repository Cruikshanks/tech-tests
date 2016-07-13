RSpec.describe Array do
  context 'given the following Array [1, 2, 3, 4, 5]' do
    let(:foo) { [1, 2, 3, 4, 5] }
    it 'will return 3 (n+1 places from the left) if n is postive' do
      expect(foo[2]).to eq 3
    end
    it 'will return 4 (n places from the right) if n is negative' do
      expect(foo[-2]).to eq 4
    end
  end
end

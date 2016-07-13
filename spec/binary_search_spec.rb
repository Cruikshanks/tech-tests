require 'binary_search'

RSpec.describe BinarySearch do

  describe '#where_in_array' do
    let(:search) { BinarySearch.new([2, 4, 5, 10, 13, 18, 20]) }

    context 'when passed an array, and a number that exists in it' do
      it 'finds 10 at position 3' do
        expect(search.where_in_array(10)).to eq 3
      end

      it 'finds 2 at position 0' do
        expect(search.where_in_array(2)).to eq 0
      end

      it 'finds 20 at position 6' do
        expect(search.where_in_array(20)).to eq 6
      end
    end

    context 'when passed an array, and a number that does not exist in it' do
      it 'returns -1 when the number is less than the lowest value' do
        expect(search.where_in_array(1)).to eq(-1)
      end

      it 'returns -1 when the number is higher than the lowest value' do
        expect(search.where_in_array(21)).to eq(-1)
      end
    end
  end

  describe '#first_in_array' do
    let(:search) { BinarySearch.new([2, 4, 10, 10, 10, 18, 20]) }

    context 'when passed an array, and a number that appears more than once' do
      it 'finds the first occurence of 10 at position 2' do
        expect(search.first_in_array(10)).to eq 2
      end

      it 'finds the first occurence of 2 at position 0' do
        expect(search.first_in_array(2)).to eq 0
      end

      it 'finds the first occurence of 20 at position 6' do
        expect(search.first_in_array(20)).to eq 6
      end
    end

    context 'returns -1 when passed an array, /
      and a number that does not appear' do
      it 'returns -1 when the number is less than the lowest value' do
        expect(search.first_in_array(1)).to eq(-1)
      end

      it 'returns -1 when the number is higher than the lowest value' do
        expect(search.where_in_array(21)).to eq(-1)
      end
    end
  end

  describe '#last_in_array' do
    let(:search) { BinarySearch.new([2, 4, 10, 10, 10, 18, 20]) }
    context 'when passed an array, and a number that appears more than once' do
      it 'finds the last occurence of 10 at position 4' do
        expect(search.last_in_array(10)).to eq(4)
      end

      it 'finds the last occurence of 2 at position 0' do
        expect(search.last_in_array(2)).to eq(0)
      end

      it 'finds the last occurence of 20 at position 0' do
        expect(search.last_in_array(20)).to eq(6)
      end
    end

    context 'returns -1 when passed an array, /
      and a number that does not appear' do
      it 'returns -1 when the number is less than the lowest value' do
        expect(search.last_in_array(1)).to eq(-1)
      end

      it 'returns -1 when the number is higher than the lowest value' do
        expect(search.last_in_array(21)).to eq(-1)
      end
    end
  end

  describe '#count_in_array' do
    let(:search) { BinarySearch.new([1, 1, 3, 3, 5, 5, 5, 5, 5, 9, 9, 11]) }
    context 'when passed an array, and a number that /
      appears once or more more' do
      it 'finds 5 occurrences of 5' do
        expect(search.count_in_array(5)).to eq(5)
      end
      it 'finds 2 occurrences of 1' do
        expect(search.count_in_array(1)).to eq(2)
      end
      it 'finds 1 occurrence of 11' do
        expect(search.count_in_array(11)).to eq(1)
      end
    end

    context 'returns 0 when passed an array, /
      and a number that does not appear' do
      it 'returns 0 when the number is less than the lowest value' do
        expect(search.count_in_array(2)).to eq 0
      end

      it 'returns -1 when the number is higher than the lowest value' do
        expect(search.count_in_array(21)).to eq 0
      end
    end
  end
end

# BinarySearch examples
class BinarySearch
  def initialize(array)
    @array = array
    @size = array.size
  end

  # Find the position of a number in a sorted array
  # This is known as binary search and essentially boils down to dissecting
  # the array into smaller and smaller chunks until you get a match, as opposed
  # to searching the whole array. Have seen this specified as O(log n) vs O(n)
  # (O(n) being bad)
  def where_in_array(number)
    high = @size - 1
    low = 0

    while low <= high
      mid = (low + high) / 2
      # puts "low #{low}, high #{high}, mid#{mid}"
      if number == @array[mid]
        return mid
      elsif number < @array[mid]
        high = mid - 1
      else
        low = mid + 1
      end
    end

    -1
  end

  # Find the first occurrence of a number in a sorted array
  # This is known as binary search and essentially boils down to dissecting
  # the array into smaller and smaller chunks until you get a match, as opposed
  # to searching the whole array. Have seen this specified as O(log n) vs O(n)
  # (O(n) being bad)
  def first_in_array(number)
    high = @size - 1
    low = 0
    result = -1

    while low <= high
      mid = (low + high) / 2
      # puts "low #{low}, high #{high}, mid#{mid}"
      if number == @array[mid]
        result = mid
        high = mid - 1
      elsif number < @array[mid]
        high = mid - 1
      else
        low = mid + 1
      end
    end

    result
  end

  # Find the last occurrence of a number in a sorted array
  # This is known as binary search and essentially boils down to dissecting
  # the array into smaller and smaller chunks until you get a match, as opposed
  # to searching the whole array. Have seen this specified as O(log n) vs O(n)
  # (O(n) being bad)
  def last_in_array(number)
    high = @size - 1
    low = 0
    result = -1

    while low <= high
      mid = (low + high) / 2
      # puts "low #{low}, high #{high}, mid#{mid}"
      if number == @array[mid]
        result = mid
        low = mid + 1
      elsif number < @array[mid]
        high = mid - 1
      else
        low = mid + 1
      end
    end

    result
  end

  # Count the occurrence of a number in a sorted array
  # This is known as binary search and essentially boils down to dissecting
  # the array into smaller and smaller chunks until you get a match, as opposed
  # to searching the whole array. Have seen this specified as O(log n) vs O(n)
  # (O(n) being bad)
  def count_in_array(number)
    first = first_in_array(number)
    return 0 if first == -1

    last = last_in_array(number)
    (last - first + 1)
  end
end

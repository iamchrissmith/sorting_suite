require 'pry'

class MergeSort
  def compare_arrays(first, second)
    combined = []
    until first.empty? || second.empty?
      if ( first[0] > second[0])
        combined << second[0]
        second.shift
      else
        combined << first[0]
        first.shift
      end
    end
    until first.empty?
      combined << first[0]
      first.shift
    end
    until second.empty?
      combined << second[0]
      second.shift
    end
    combined
  end

  def sort(unsorted)
    if unsorted.length < 2
      return unsorted
    end
    split = []
    unsorted.each_slice(1) {|a| split << a}
    until split.empty?
      iterations = (split.length / 2.0).ceil
      sorted = []
      iterations.times do
        if split[1].nil?
          odd = compare_arrays(split[0], sorted.last)
          sorted.pop
          sorted << odd
          split.pop
        else
          sorted << compare_arrays(split[0], split[1])
          split = split.drop(2)
        end
      end
      unless sorted.length == 1 && split.empty?
        split = sorted
      end
    end
    sorted[0]
  end

end

# sorter = MergeSort.new
# p sorter.sort([4,1,5,6,2,7,20,25,100,5,5,25,500,3,19])

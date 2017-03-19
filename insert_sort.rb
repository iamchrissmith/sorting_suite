require 'pry'
require 'benchmark'

# sorter = InsertionSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]

class InsertionSort
  def place_in_new_array(to_place)
    @sorted.each.with_index do |in_place, index|
      if @sorted.length == 0
        @sorted[0] = to_place
      elsif in_place > to_place
        @sorted.insert(index,to_place)
        break
      elsif @sorted.length == index + 1
        @sorted << to_place
        break
      end
    end
  end

  def sort(unsorted)
    @sorted = []
    @sorted[0] = unsorted.shift
    until unsorted.empty?
      to_place = unsorted[0]
      place_in_new_array(to_place)
      unsorted.shift
    end
    @sorted
  end
end

# time = Benchmark.measure do
#   sorter = InsertionSort.new
#   p sorter.sort(%w(b d f m z t r q o p w c e f j u l x n))
# end
# puts time

require 'pry'
require 'benchmark'

# sorter = BubbleSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]

class BubbleSort
  def swap_items(index)
    temp = @unsorted[index]
    @unsorted[index] = @unsorted[index+1]
    @unsorted[index+1] = temp
  end

  def sort(unsorted)
    @unsorted = unsorted
    number_sorted = 1
    until number_sorted == @unsorted.length

      @unsorted.each_with_index do |item, index|
        compare = @unsorted[index + 1]
        next unless compare #means we are at the end of this round

        if item > compare
          swap_items(index)
        end

      end
      number_sorted += 1
    end
    unsorted
  end
end

time = Benchmark.measure do
  sorter = BubbleSort.new
  # p sorter.sort(["d", "b", "a", "c"])
  p sorter.sort(('a'..'z').to_a.shuffle)
end
puts time

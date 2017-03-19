require 'pry'
require 'benchmark'

# sorter = BubbleSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]

class BubbleSort
  def swap_items(index, items)
    temp = items[index]
    items[index] = items[index+1]
    items[index+1] = temp
    items
  end

  def sort(unsorted)
    number_sorted = 1
    until number_sorted == unsorted.length

      unsorted.each.with_index do |item, index|
        compare = unsorted[index + 1]
        next unless compare #means we are at the end of this round

        if item > compare
           unsorted = swap_items(index, unsorted)
        end

      end
      number_sorted += 1
    end
    unsorted
  end
end

# time = Benchmark.measure do
#   sorter = BubbleSort.new
#   # p sorter.sort(["d", "b", "a", "c"])
#   p sorter.sort(('a'..'z').to_a.shuffle)
# end
# puts time

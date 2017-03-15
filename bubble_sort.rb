require 'pry'
require 'benchmark'

# sorter = BubbleSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]

class BubbleSort
  def sort(unsorted)
    number_sorted = 0
    until number_sorted == unsorted.length
      unsorted.each_with_index do |item, index|
        place = item
        if index+1 >= unsorted.length - number_sorted
          next
        end
        compare = unsorted[index + 1]
        if place > compare
          unsorted[index] = compare
          unsorted[index+1] = place
        end
      end
      number_sorted += 1
    end
    unsorted
  end
end

time = Benchmark.measure do
  sorter = BubbleSort.new
  sorter.sort(%w(b d f m z t r q o p w c e f j u l x n))
end
puts time

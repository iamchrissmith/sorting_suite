require 'pry'

# sorter = InsertionSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]

class InsertionSort
  def sort(unsorted)
    sorted = []
    sorted[0] = unsorted[0]
    unsorted.each do |to_place|
      puts "Unsorted: #{unsorted}"
      sorted.each_with_index do |in_place, index|
        puts "sorted: #{sorted}"
        if in_place > to_place
          sorted.insert(index,to_place)
        end
      end
    end
    sorted
  end
end
sorter = InsertionSort.new
sorter.sort(["d", "b", "a", "c"])

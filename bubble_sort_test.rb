require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'bubble_sort'

class BubbleSortTest < MiniTest::Test
  def test_bubble_sort_exists
    sorter = BubbleSort.new
    assert sorter
  end
  def test_sort_letters
    sorter = BubbleSort.new
    start_letters = ["d", "b", "a", "c"]
    expected_letters = ["a", "b", "c", "d"]
    assert_equal sorter.sort(start_letters), expected_letters 
  end
end

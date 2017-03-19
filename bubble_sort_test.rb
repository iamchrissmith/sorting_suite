require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'bubble_sort'

class BubbleSortTest < MiniTest::Test
  def test_bubble_sort_exists
    sorter = BubbleSort.new
    assert sorter
  end
  def test_insert_sort_works_for_random_alphabet
    sorter = BubbleSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.sort(test_letters)
  end
  def test_sort_letters
    sorter = BubbleSort.new
    start_letters = ["d", "b", "a", "c"]
    expected_letters = ["a", "b", "c", "d"]
    assert_equal expected_letters, sorter.sort(start_letters)
    start_letters = ["d", "b", "a", "c", "d", "b", "a", "c"]
    expected_letters = ["a", "a", "b", "b", "c", "c", "d", "d"]
    assert_equal expected_letters, sorter.sort(start_letters)
  end
end

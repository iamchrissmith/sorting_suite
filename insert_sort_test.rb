require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'insert_sort'

class InsertionSortTest < MiniTest::Test
  def test_insert_sort_exists
    sorter = InsertionSort.new
    assert sorter
  end

  def test_insert_sort_works_for_random_alphabet
    sorter = InsertionSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.sort(test_letters)
  end
  def test_insert_sort_works_for_assignment_set
    sorter = InsertionSort.new
    expected = ["a", "b", "c", "d"]
    test_letters = ["d", "b", "a", "c"]
    assert_equal expected, sorter.sort(test_letters)
    start_letters = ["d", "b", "a", "c", "d", "b", "a", "c"]
    expected_letters = ["a", "a", "b", "b", "c", "c", "d", "d"]
    assert_equal expected_letters, sorter.sort(start_letters)
  end
end

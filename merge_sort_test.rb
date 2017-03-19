require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'merge_sort'

class MergeSortTest < MiniTest::Test
  def test_merge_sort_exists
    sorter = MergeSort.new
    assert sorter
  end

  def test_merge_sort_returns_array
    sorter = MergeSort.new
    assert_kind_of Array, sorter.sort([])
    test_letters = ["d", "b", "a", "c"]
    assert_kind_of Array, sorter.sort(test_letters)
  end

  def test_merge_sort_works_for_random_alphabet
    sorter = MergeSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.sort(test_letters)
  end

  def test_merge_sort_works_for_random_alphabet
    sorter = MergeSort.new
    expected = (0..100).to_a
    test_numbers = expected.shuffle
    assert_equal expected, sorter.sort(test_numbers)
  end

  def test_merge_sort_works_for_assignment_set
    sorter = MergeSort.new
    expected = ["a", "b", "c", "d"]
    test_letters = ["d", "b", "a", "c"]
    assert_equal expected, sorter.sort(test_letters)
  end

  def test_single_element_array_returns
    sorter = MergeSort.new
    expected = ["a"]
    test_letters = ["a"]
    assert_equal expected, sorter.sort(test_letters)    
  end

end

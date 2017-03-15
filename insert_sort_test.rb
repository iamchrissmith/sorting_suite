require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'insert_sort'

class InsertionSortTest < MiniTest::Test
  def test_insert_sort_exists
    sorter = InsertionSort.new
    assert sorter
  end

  def test_insert_sort_works
    sorter = InsertionSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.sort(test_letters)
  end

end

require "test/unit"
require "fibonacci"

class FibonacciTest < Test::Unit::TestCase
  def test_fibonacci_result_0
    assert_equal 0, 0.fibonacci
  end

  def test_fibonacci_result_1
    assert_equal 1, 1.fibonacci
  end

  def test_fibonacci_result_2
    assert_equal 1, 2.fibonacci
  end

  def test_fibonacci_result_3
    assert_equal 2, 3.fibonacci
  end

  def test_fibonacci_result_4
    assert_equal 3, 4.fibonacci
  end

  def test_fibonacci_result_5
    assert_equal 5, 5.fibonacci
  end

  def test_fibonacci_result_6
    assert_equal 8, 6.fibonacci
  end

  def test_fibonacci_result_7
    assert_equal 13, 7.fibonacci
  end

end
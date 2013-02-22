require "test/unit"
require "binaryreverse"

class BinaryReverseTest < Test::Unit::TestCase
  def test_reverse_binary
    assert_equal 11, "13".reverse_binary
  end
end
# frozen_string_literal: true

require "test_helper"

class TestMemo < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Memo::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end

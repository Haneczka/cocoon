require_relative 'cocoon_communicator'
require "test/unit"

class TestMassage < Test::Unit::TestCase
  def test_init
    massage1 = Massage.new("Hania","Yo!")
    assert_equal('Hania|Yo!', massage1.serialize)
  end
end
require_relative 'message'
require "test/unit"

class TestMessage < Test::Unit::TestCase
  def test_seriaize
    message1 = Message.new("Hania","Yo!")
    assert_equal('Hania|Yo!', message1.serialize)
  end
  def test_deserialize
    m1 ="Hania|Yo!"
    assert_equal(Message.new("Hania","Yo!"),deserialize(m1))
  end
  def test_interface
    message1 = Message.new("Hania","Yo!")
    assert_equal("Hania:\n       Yo!", message1.interface_message)
  end
end
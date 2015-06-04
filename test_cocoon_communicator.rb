require_relative 'message'
require_relative 'dispatcher'
require "test/unit"

class TestMessage < Test::Unit::TestCase
  def test_seriaize
    message1 = Message.new("Hania","Yo!")
    assert_equal("Hania|Yo!\n", message1.serialize)
  end
  def test_deserialize
    m1 ="Hania|Yo!\n"
    assert_equal(Message.new("Hania","Yo!"),deserialize(m1))
  end
  def test_interface
    message1 = Message.new("Hania","Yo!")
    assert_equal("Hania:\n       Yo!", message1.interface_message)
  end
end

class TestCommunication < Test::Unit::TestCase
  def test_send_and_recv
    #turn echo script on
    message1 = Message.new("Hania","Yo!")
    dispatcher = Dispatcher.new("127.0.0.1", 7779)
    dispatcher.send(message1)
    assert.equal(message1, dispatcher.receive)
  end
end

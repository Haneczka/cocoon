class Message
  
  attr_reader :username,:value
  
  def initialize(username,value)
    @username =username
    @value = value
  end
  def serialize
    return @username+"|"+@value
  end
  def ==(another_message)
    self.username == another_message.username && self.value == another_message.value
  end
  def interface_message  
    return self.username+":"+"\n"+"       "+self.value
  end
end

def deserialize(m)
  arr = m.split("|")
  return Message.new(arr[0].to_s,arr[1].to_s)
end


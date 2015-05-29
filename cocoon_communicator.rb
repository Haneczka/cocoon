#require 'socket'
#p "Please enter your login."
#login = gets
#p "Please enter IP adress."
#ip_adress = gets
#p "Please enter port number."
#port_number = gets
#s = TCPSocket.new(ip_adress.chomp, port_number.chomp)
#p "Please enter the massage."
#massage = gets
#p login.chomp+"/"+Time.now.strftime("%d/%m/%Y %H:%M")+"/"+massage.chomp
#s.write massage.to_s
#answer = s.gets
#p answer

class Massage
  def initialize(username,value)
    @username =username
    @value = value
  end
  def serialize
    return @username+"|"+@value
  end
end
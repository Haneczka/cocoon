require 'socket'

p "Please enter IP adress."
ip_adress = gets
p "Please enter port number."
port_number = gets
s = TCPSocket.new(ip_adress.chomp, port_number.chomp)
p "Please enter the massage."
massage = gets
s.write massage.to_s
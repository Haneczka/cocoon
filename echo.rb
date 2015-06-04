#!/usr/bin/ruby

require 'socket'


listen_port = 7779

Socket.tcp_server_loop(listen_port) do |conn, addr|
  Thread.new do
    client = "#{addr.ip_address}:#{addr.ip_port}"
    puts "#{client} is connected"
    begin
      loop do
        line = conn.readline
        puts "#{client} says: #{line}"
        conn.puts(line)
      end
    rescue EOFError
      conn.close
      puts "#{client} has disconnected"
    end
  end
end

########################################
# Sample code to write to this socket:
#
# require 'socket'
#
# s = TCPSocket.new("127.0.0.1", 7779)
# s.write "dobry\n" #newline is important since echo script reads whole lines
# p s.recv(1000)
# s.close
#

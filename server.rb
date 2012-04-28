require 'gserver'

#
# class for outputting whatever gets sent to server 
# Initinally to command line, but eventually anywhere
#

class PortServer < GServer
 def initialize(port, *args)
   super(port,*args)
 end
 def serve(io)
  puts "hello"
  io.puts(io)
 end
end

server = PortServer.new(10100)
server.audit = true
server.start

while !server.stopped? do
end

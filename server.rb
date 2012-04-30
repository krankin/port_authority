require 'gserver'

#
# class for outputting whatever gets sent to server 
# Initinally to command line, but eventually anywhere
#

class PortServer < GServer
 def initialize(port, *args)
   super(port,*args)
 end
 def connecting(client)
   puts " test Connection from " + client.to_s
 end
 def serve(io)
   puts io.readline
 end

end

server = PortServer.new(10100)
server.audit = true
server.start

server.join

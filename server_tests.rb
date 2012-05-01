require 'test/unit'
require File.dirname(__FILE__) + "/server"
require "socket"

class ServerTest < Test::Unit::TestCase
 
   def test_server_created_
     s= PortServer.new(1234)
     assert_not_nil(s)
   end

   def test_server_port_assignment
     s= PortServer.new(1234)
     assert_equal(s.port,1234)
   end

   def test_server_has_connection
     s = PortServer.new(1234)
     s.start
     c = TCPSocket.new("localhost",1234)
     assert_equal(1,s.connections)
   end   
end

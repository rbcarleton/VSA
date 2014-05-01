require_relative "VSASupervisor"
require "test/unit"

class TestVSASupervisor < Test::Unit::TestCase
    
    def setup
        @my_supervisor = VSASupervisor.new
    end
    
    def teardown
        ## Nothing really
    end

    def test_stub
    end
    
end

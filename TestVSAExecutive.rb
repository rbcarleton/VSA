require "VSAExecutive"
require "test/unit"

class TestVSAExecutive < Test::Unit::TestCase
    
    def setup
        @my_executive = VSAExecutive.new(5)
    end
    
    def teardown
        ## Nothing really
    end
 
    def test_setters_and_getters
        @test_name = "Test VSA"
        @my_executive.interval = 1
        @my_executive.name = @test_name
        assert_equal(1, @my_executive.interval )
        assert_equal(@test_name, @my_executive.name )
    end    
end

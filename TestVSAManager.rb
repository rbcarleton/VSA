require "VSAManager"
require "test/unit"

class TestVSAManager < Test::Unit::TestCase
    
    def setup
        @my_manager = VSAManager.new
    end
    
    def teardown
        ## Nothing really
    end
 
    def test_setters_and_getters
        @my_manager.cost_center = true
        @my_manager.operations_compare = false
        assert_equal(true, @my_manager.cost_center )
        assert_equal(false, @my_manager.operations_compare )
    end
end

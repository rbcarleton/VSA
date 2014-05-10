require_relative "VSA"
require "test/unit"

class TestVSA < Test::Unit::TestCase
    
    def setup
        @myvsa = VSA.new
    end
    
    def teardown
        ## Nothing really
    end
 
    def test_setters_and_getters
        @myvsa.cost_center = false
        @myvsa.actuality = 200.0
        @myvsa.capability = 500.0
        @myvsa.potentiality = 1000.0
        assert_equal(200.0, @myvsa.actuality )
        assert_equal(500.0, @myvsa.capability )
        assert_equal(1000.0, @myvsa.potentiality )
        assert_equal(false, @myvsa.cost_center )
        @myvsa.cost_center = true
        assert_equal(true, @myvsa.cost_center )
    end
    
    # Profit center
    # See:  Figure 29 on page 165
    # Beer, Stafford. Brain of the Firm (2nd ed./1981). Chichester: John
    # Wiley & Sons.
    def test_VSA_ProfitCenter
        @myvsa.cost_center = false
        @myvsa.actuality = 200.0
        @myvsa.capability = 500.0
        @myvsa.potentiality = 1000.0
        assert_equal(0.4, @myvsa.productivity )
        assert_equal(0.5, @myvsa.latency )
        assert_equal(0.2, @myvsa.performance )
    end
    
    # Cost center
    # See:  Figure 29 on page 165
    # Beer, Stafford. Brain of the Firm (2nd ed./1981).
    def test_VSA_CostCenter
        @myvsa.cost_center = true
        @myvsa.actuality = 100.0
        @myvsa.capability = 50.0
        @myvsa.potentiality = 10.0
        assert_equal(0.5, @myvsa.productivity )
        assert_equal(0.2, @myvsa.latency )
        assert_equal(0.1, @myvsa.performance )
    end
    
end

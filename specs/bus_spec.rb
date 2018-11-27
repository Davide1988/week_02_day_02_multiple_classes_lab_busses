

require('minitest/autorun')
require('minitest/rg')

require_relative('../bus.rb')

class BusTest < MiniTest::Test


    def setup
      @bus = Bus.new(22, "Ocean Terminal")
    end
    def test_bus_has_route
      assert_equal(22, @bus.route)
    end


    def test_bus_has_destination
      assert_equal("Ocean Terminal", @bus.destination)
    end

end

require("minitest/autorun")
require("minitest/rg")

require_relative('../busstop.rb')

class BusStopTest < MiniTest::Test

      def setup
        @bus_stop_1 = BusStop.new("Haymarket")
      end

      def test_bus_stop_has_name
        assert_equal("Haymarket", @bus_stop_1.bus_stop_name)
      end

end

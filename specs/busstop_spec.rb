require("minitest/autorun")
require("minitest/rg")

require_relative('../busstop')
require_relative('../person')

class BusStopTest < MiniTest::Test

      def setup
        @bus_stop_1 = BusStop.new("Haymarket")
        @bus_stop_2 = BusStop.new("Jocks Lodge")
        @bus_stop_3 = BusStop.new("High Street")
        @person_1 = Person.new("Mark", 46)
        @person_2 = Person.new("Davide", 29)
        @person_3 = Person.new("Joe", 32)
        
      end

      def test_bus_stop_has_name
        assert_equal("Haymarket", @bus_stop_1.bus_stop_name)
      end
      def test_add_person_to_queue
        @bus_stop_1.add_person_to_queue(@person_1)
        assert_equal(1, @bus_stop_1.get_queue_size)
      end

end

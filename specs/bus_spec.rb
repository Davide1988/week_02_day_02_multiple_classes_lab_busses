

require('minitest/autorun')
require('minitest/rg')

require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test


    def setup

      @mark = Person.new("Mark", 46)
      @davide = Person.new("Davide", 29)
      @joe = Person.new("Joe", 32)
      @bus = Bus.new(22, "Ocean Terminal")
      @bus_1 = Bus.new(16, "Morningside", [@mark, @davide])
    end
    def test_bus_has_route
      assert_equal(22, @bus.route)
    end


    def test_bus_has_destination
      assert_equal("Ocean Terminal", @bus.destination)
    end

    def test_drive_bus
      assert_equal("Brum brum", @bus.drive_bus)
    end
    def test_count_passengers__0
      result = @bus.count_passengers
      assert_equal(0, result)
    end

    def test_count_passengers__2
      result = @bus_1.count_passengers
      assert_equal(2, result)
    end
    def test_pick_up_passenger
      @bus_1.pick_up_passenger(@joe)
      assert_equal(3, @bus_1.count_passengers)
    end

    def test_drop_off_passenger
      @bus_1.drop_off_passenger(@mark)
      assert_equal(1, @bus_1.count_passengers)
    end
    def test_empty_bus
      @bus_1.empty
      assert_equal(0, @bus_1.count_passengers)
    end


end

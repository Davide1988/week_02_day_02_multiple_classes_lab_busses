class Bus

attr_reader :route, :destination
attr_accessor :passengers

      def initialize(route, destination, passengers = [])
        @route = route
        @destination = destination
        @passengers = passengers
      end


      def drive_bus
        return "Brum brum"
      end

      def count_passengers
        return @passengers.length
      end

      def pick_up_passenger(person)
        @passengers << person
      end

      def drop_off_passenger(person)
        for passenger in @passengers
            @passengers.delete_if {|passenger| passenger == person }
        end
      end

      def empty
        @passengers.clear
      end


end

class BusStop

  attr_accessor :bus_stop_name, :bus_queue

  def initialize(bus_stop_name, bus_queue = [])
    @bus_stop_name = bus_stop_name
    @bus_queue = bus_queue
  end

  def add_person_to_queue(person)
    @bus_queue << person
    p @bus_queue
  end

  def get_queue_size
    return @bus_queue.length
  end
  def empty
    @bus_queue.clear
  end

end

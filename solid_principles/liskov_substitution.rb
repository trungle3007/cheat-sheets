class Vehicle
  def start_engine
    raise(NotImplementedError, 'Subclasses must implement the `start_engine` method')
  end

  def accelerate
    raise(NotImplementedError, 'Subclasses must implement the `accelerate` method')
  end

  def stop_engine
    raise(NotImplementedError, 'Subclasses must implement the `stop_engine` method')
  end
end

class Bicycle < Vehicle
  def start_engine
    raise(NotImplementedError, 'Bicycles don\'t have engines')
  end

  def accelerate
    puts 'Bicycle pedaling faster'
  end

  def stop_engine
    raise(NotImplementedError, 'Bicycles don\'t have engines')
  end
end

class Car < Vehicle
  def start_engine
    puts 'Car engine started'
  end

  def accelerate
    puts 'Car accelerating'
  end

  def stop_engine
    puts 'Car engine stopped'
  end
end

def perform_race(vehicle)
  vehicle.start_engine
  vehicle.accelerate
  # race logic here
  vehicle.stop_engine
end

begin
  car  = Car.new
  bicycle = Bicycle.new

  perform_race(car)
  perform_race(bicycle)
rescue NotImplementedError => e
  puts e.message
end

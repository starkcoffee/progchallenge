require 'yaml'

class ReservationService

  def initialize
    @datafile = nil
    @data = []
  end

  def set_datafile
    @datafile = "seats.yaml"
  end

  def reserve(num_seats)
    # this is a dummy implementation
    seats = load_data
    
    if seats.size >= num_seats
      reserved_seats = seats.slice!(0, num_seats)
      save_data(seats)
      "Your reserved seat numbers are: #{reserved_seats}"
    elsif seats.size < num_seats
      "Sorry, there are only #{seats.size} seats left"
    else
      "Sorry, we're fully booked"
    end
  end

  def list_available
    seats = load_data
  end


  def list_reserved()
    # this is a dummy implementation
    [1,2,3]
  end

  private

  def load_data
    if set_datafile
      YAML::load_file(@datafile)
    else
      @data
    end
  end

  def save_data(data)
    if @datafile
      File.open(@datafile, 'w') { |f| f.write (YAML::dump(data)) }
    else
      @data = data
    end
  end

end

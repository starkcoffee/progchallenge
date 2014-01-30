require 'yaml'

class ReservationService

  def initialize
    @datafile = "seats.yaml"
    @data = []
  end

  def data=(data)
    @datafile = nil
    @data = data
  end

  def reserve(num_seats)
    seats = load_data
    reserved_all = []
    
    if seats.size >= num_seats
      reserved_seats = seats.slice!(0, num_seats)
      save_data(seats)
      "Your reserved seat numbers are: #{reserved_seats}"
    elsif seats.size == 0
      "Sorry, we're fully booked"
    elsif seats.size < num_seats
      "Sorry, there are only #{seats.size} seats left"
    end
  end

  def list_available
    seats = load_data
  end


  def list_reserved()
    seats = load_data
    total = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    reserved_seats = total.size - seats.size
    total.slice(0, reserved_seats)
  end

  private

  def load_data
    if @datafile
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

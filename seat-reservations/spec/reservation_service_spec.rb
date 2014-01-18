require "test/unit"
require "./lib/reservation_service"

class ReservationServiceTest < Test::Unit::TestCase

  def setup
    @service = ReservationService.new
  end

  def test_reserving_seats_in_empty_carriage
    skip # remove this when you're ready to run the test
    reserved_seat_numbers = @service.reserve(2)
    assert_equal [1,2], reserved_seat_numbers
  end

  def test_reserving_seats_in_non_empty_carriage
    skip # remove this when you're ready to run the test
    @service.reserve(1)
    reserved_seat_numbers = @service.reserve(2)

    assert_equal [2,3], reserved_seat_numbers
  end

  def test_listing_when_no_reservations
    skip # remove this when you're ready to run the test
    assert_equal [], @service.list_reserved()
  end

  def test_listing_reservations
    skip # remove this when you're ready to run the test
    @service.reserve(1)
    @service.reserve(3)

    assert_equal [1,2,3,4], @service.list_reserved()
  end

end

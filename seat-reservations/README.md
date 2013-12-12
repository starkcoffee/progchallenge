#Welcome to the Seat Reservation System 2000

This is a revolutionary command line tool to reserve seats in a train.

The purpose is for you to improve your pure programming skills, not your web development skills or your ability to use frameworks and libraries.

Watch out Deutsche Bahn!

###Your first challenge

The first iteration of this app consists of the following user stories:

_As a passenger, I want to reserve seats on the train so that I can sit with my homies. And of course I want to know the number(s) of the seat(s) I reserved, duh._

_As a Deutsche Bahn personnel, I want to get a list of the seats that are reserved so that I can mark them in the carraige with a little 'X' so that those freeloaders who don't pay to reserve seats don't stop me from making my millions._


###Here's how you are going to do it

It's a ruby app, so we've provided you with a ruby script that handles the commandline input and output. Clone this repository and run:

	> ./reserve.rb
	
You will get a prompt, and it works like this:

	Welcome to the SRS 2000!
	How many seats do you want to reserve?
	2  <-- your customer enters this
	Your reserved seat numbers are:
	12,13 <-- your program calculates this
	
If you run the other script `list`, it will list all the seat numbers that are reserved, eg.
	
	> ./list.rb
	1,2,3,4,5,6,7,8,9,10,11,12,13
	
For now the carriage has 20 seats in rows of 2. You can allocate the seats just sequentially for now, nothing fancy.

If the customer tries to reserve seats and there are none left, you should do something sensible, since there is not yet a standard protocol for issuing electric shocks via the command line.

###Getting Started

If you look at the scripts `reserve.rb` and `list.rb`, you will see that we expect you to build a class `ReservationService` that provides two core methods to interact with the reservation system.

We have created a test suite in `spec/reservation_service_spec.rb` to get you started.

The only requirement is that you pass the existing tests and have the scripts working as above. You are free to add other files/classes/tests. 

When you are done, we'll extend your contract and give you your next assignment!




	



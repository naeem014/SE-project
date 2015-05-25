Feature: search doctors filtered by location

As a Patient
I want to search doctors on basis of their location
So that the results are filtered according to the doctor location

Background: doctors have been added to database
Given the following doctors exist:
  | Name                    | Specialization 	| Location    | email			| password_digest |
  | Haris                   | Dentist  			| EME         | haris@mail.com	| 123			  | 	
  | Saad          			| Neurosurgeon      | Defence     |	saad@mail.com	| 123			  |
  
And I am on the OnlineAppointments home page

Scenario: search movies filtered by location

When I fill in "Location" with "Defence"
And I press "Search Location"
Then I should see "Saad"
But I should not see "Haris"





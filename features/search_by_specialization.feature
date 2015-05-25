Feature: search doctors filtered by specialization

As a Patient
I want to search doctors on basis of their specialization
So that the results are filtered according to the doctor speacialization

Background: doctors have been added to database
Given the following doctors exist:
  | Name                    | Specialization 	| Location    | email			| password_digest |
  | Haris                   | Dentist  			| EME         | haris@mail.com	| 123			  | 	
  | Saad          			| Neurosurgeon      | Defence     |	saad@mail.com	| 123			  |
  
And I am on the OnlineAppointments home page

Scenario: search movies filtered by specialization

When I fill in "Specialization" with "Dentist"
And I press "Search Specialization"
Then I should see "Haris"
But I should not see "Saad"





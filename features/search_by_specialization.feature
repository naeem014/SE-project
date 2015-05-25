Feature: search doctors filtered by specialization

As a Patient
I want to search doctors on basis of their specialization
So that the results are filtered according to the doctor speacialization

Background: doctors have been added to the database
Given the following doctors exist:
  | Name                    | Specialization 	| Location    |
  | Aladdin                 | Cardiac surgeon   | Defence     |
  | The Terminator          | Dentist           | Johar Town  |
  | Harry                   | Physiotherapist   | EME         |
  
And I am on the OnlineAppointments home page

Scenario: search movies filtered by specialization

When I fill in "Specialization" with "Dentist"
And I press "Search Specialization"
Then I should see "The Terminator"
But I should not see "Harry"





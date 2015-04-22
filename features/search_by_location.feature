Feature: search doctors filtered by location

As a Patient
I want to search doctors on basis of their location
So that the results are filtered according to the doctor location

Background: doctors have been added to the database
Given the following doctors exist:
  | Name                    | Specialization 	| Location    |
  | Aladdin                 | Cardiac surgeon   | Defence     |
  | The Terminator          | Dentist           | Johar Town  |
  | Harry                   | Physiotherapist   | EME         |
  
And I am on OnlineAppointmets home page

Scenario: search movies filtered by location

When I fill in 'Defence'
And I press 'search'
Then I should see 'Aladdin'
But I should not see 'Harry'





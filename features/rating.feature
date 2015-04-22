Feature: rate a doctor

As a Patient
I want to rate a doctor
So that other patients can view the ratings 

Background: appointments have been added to the database
Given the following doctors exist:
	|appointment_ID | doctor_name 		| appointment_date	|
	|1		| Aladdin 		| 25-Nov-1992		|
	|2		| The Terminator 	| 26-Oct-1984		|
	|3		| Aladdin 	        | 21-Jul-1989		|


And I am on the appointment's history page

Scenario: display doctor rating page

When I follow '1'
Then I should be on rating page

Scenario: rate the doctor

Given I am on rating page

When I fill in '4' 
And I press 'submit'
Then I should see 'rating saved successfully'
And I should be on OnlineAppointments homepage




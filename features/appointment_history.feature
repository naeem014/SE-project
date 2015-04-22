Feature: display a list of recent appointments

As a patient
I want to see my history of appointments taken
So that I can take appointment quickly without searching

Background: appointments have been added to database

Given the following appointments exist:

  | appointment_ID          | doctor_name    | appointment_date |
  | 1                       | Aladdin        | 25-Nov-1992      |
  | 2          		    | The Terminator | 26-Oct-1984      |
  | 3    		    | Aladdin        | 21-Jul-1989      |

And I am on the OnlineAppointmets home page

Scenario: display list of recent appointments

When I press 'appointment_history'
Then I should see 'Aladdin'
And I should see 'The Terminator'
And I should see 'Aladdin'


Feature: Testing payments and pledges

  Scenario: Add a pledge from the journal page
    Given I am logged into eTap
    When I type '/14' into the dynamic search field
    And I press Enter on the keyboard
    And I click Journal on the Gail Burch account
    And I select 'Gift/Pledge' from the Add New... drop down menu
    And I set the date to Today on the new pledge page
#    And I set the Pledged Amount to '240'
#    And I set the Fund to 'Unrestricted'
#    And I set the Campaign to Annual
#    And I set the Approach to Direct Mail
#    And I click Create Pledge Schedule on the new pledge page
#    And I set the Frequency to Monthly
#    And I set the First Installment Date to Today
#    And I set the Installment Amount to '20'
#    And I click Save And 'Edit'
#    And I click Add a Payment for this Pledge
#    And I set the Check Date to Today on the new payment page
#    And I set the Check number to '233' on the new payment page
#    And I click Save And 'Edit'
#    And I click Delete on the payment page
#    And I click OK to delete the payment permanently
#    And I click Pledge on the journal page
#    And I click Delete on the pledge page
#    And I click OK to delete the pledge permanently
#    Then I should be taken to the Journal page of 'Gail Burch''s account
#    And I should not see a Pledge listed in the journal


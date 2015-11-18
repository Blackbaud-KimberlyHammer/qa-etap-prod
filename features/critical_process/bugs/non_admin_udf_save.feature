Feature: Verifying that non-admins cannot remove data from UDFs they do not have access to

  Scenario: Saving UDFs on a Journal Entry in full eTapestry
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.khammer.us', 'spicypancakes1'
#    And I click Management on the main menu
#    And I click System Defined Fields on the management menu
#    And I click 'Security Rights' on the System Defined Fields page
#    And I add the Security Right value 'Admins Only'
#    And I click Save and Finish on the UDF page
#    And I click Management on the main menu
#    And I click User Defined Fields on the management menu
#    And I click the 'Base' category on the User Defined Fields page
#    And I add the User Defined Field 'Transaction Number' with 'Admins Only' Security Rights Applied
    And I click Giving on the main menu
    And I click Search for an Account
    And I click on Add Account on the pop up find account screen
    And I set the Name Format to 'Individual' on the pop up find account screen
    And I set the Title to 'Mr.' on the pop up find account screen
    And I set the First Name to 'Justin' on the pop up find account screen
    And I set the Last Name to 'Timberlake' on the pop up find account screen
    And I click Save on the pop up find account screen
    And set the date to '11/3/2090'
    And set the Received Amount to '100.00'
    And set the Fund to 'Unrestricted'
    And set the Gift Type to 'Check'
    And set the Check Date to '11/3/2090'
    And set the Check Number to '1346'
    And I click on the User Defined Fields section on the new payment page
    And I set the multi-select UDF 'Security Rights' to 'Admins Only' on the gift screen
    And I click Save And 'Edit'
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Security Rights' set to 'Admins Only' on the payment page
    And I log out of eTap
#    And I login into eTap with values 'Automationbot.khammer.us.nonadmin', 'spicypancakes1'

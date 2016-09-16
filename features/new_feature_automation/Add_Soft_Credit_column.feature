Feature: Add soft credit column in Journal

  Background:
    Given I login into eTap for CP6

  Scenario: Add tribute column in Journal
    When I click Giving on the main menu
    And I click on Add a Gift or Pledge on the giving menu
    And I click Search for an Account
    And type 'Raymond Barnes' into the search field in popup
    And click Find in popup
    And select 'Raymond Barnes' in popup
    And set the date to '9/30/2090'
    And set the Received Amount to '500.00'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Capital'
    And set the Approach to 'Direct Mail'
    And set the Gift Type to 'Check'
    And set the Check Date to '9/30/2090'
    And set the Check Number to '1346'
    And I set the Soft Credit Information to 'Anne Hatch'
    And the Soft Credit Amount to '500.00'
    And I click Save And 'Edit'
    Then the gift should save properly on 'Raymond Barnes''s account
    And the date should be set to '9/30/2090'
    And the Received Amount should be set to '$500.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Capital'
    And the Gift Type should be set to 'Check'
    And the Check Date should be set to '9/30/2090'
    And the Check Number should be set to '1346'
    And I click the Tribute bar
    And the Soft Credit Information should be set to 'Anne Hatch'
    And the Soft Credit Amount should be set to '$500.00'
    And click Save
    And I click Journal
    When I click choose columns
    And I mark the checkbox for soft credit
    And I click on apply changes
    Then I should see soft credit column on Journal Page
    And I should see 'Anne Hatch' in tribute column
    When I click on 'Anne Hatch' in tribute column
    Then I should taken to 'Anne Hatch' Account Home Page









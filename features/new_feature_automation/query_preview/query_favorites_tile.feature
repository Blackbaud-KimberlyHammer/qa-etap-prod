@sprint
Feature: Query Favorites Tile and Modal

  Scenario: Favorites Tile Functionality
    Given I login into eTap for CP1
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    Then I should see the Favorites tile on the left
    And I click on the query titled 'All Constituents' in the favorites tile
    And I should be taken to the 'Edit Query - Base : All Constituents' page
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click the preview icon for the 'All Constituents' query in the favorites tile
    And I should be on the 'Base : All Constituents' query preview screen


  Scenario: Additional Favorites Modal
    Given I login into eTap for CP1
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
  #4 And I type 'Constituents' into the query favorites modal search field
  #  And I press Enter on the keyboard
  #8  And I should see '1' results in the query favorites modal
    And I click the preview icon for the 'All Constituents' query in the favorites modal
    And I should be on the 'Base : All Constituents' query preview screen
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
    And I click on the query titled 'All Constituents' in the query favorites modal
    And I should be taken to the 'Edit Query - Base : All Constituents' page
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
    And I click on 'Base' in the query favorites modal
    And I should be taken to Edit Query Category: Base
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
    When I click to close the query favorites modal
    Then I should be taken to the 'Query Categories' page


  Scenario: Favorites Modal - Menu
    Given I login into eTap for CP1
    And I click Queries on the main menu
   #9 When I click See all next to Favorites in the query menu
    And I should see the query favorites modal
    When I click Cancel in the query favorites modal
    Then I should be taken to the 'Query Categories' page



  Scenario: Adding and Removing Favorite Query
    Given I login into eTap for CP1
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Constituent Journal Entry Date' category
    And I click on the 'Today' query
    And I click the Mark Query as Favorite link
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
    Then I should see the 'Today' query in the query favorites modal
    And I click on the query titled 'Today' in the query favorites modal
    And I click the Remove from Favorite Queries link
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click '(See all)' in the Query Favorites tile
    Then I should not see the 'Today' query in the favorites modal






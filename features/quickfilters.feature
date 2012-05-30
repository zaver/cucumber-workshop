Feature: Quickfilters

  When you first open the app, you see a grid of quickfilter options.
  When you click one, you go through to the style listings page, with 
  certain filters pre-applied.

  Scenario Outline: Go to a style listings page from a quickfilter selection
    Given I'm viewing the quickfilter grid
    When I click on the "<quickfilter>" option
    Then I land on a style listing view for "<quickfilter>"
    And the <filters> filters should be applied

    Examples:
      | quickfilter       | filters                           |
      | Menswear London   | London, latest season, menswear   |
      | Non-apparel shoes | Non-apparel, latest season, shoes |

Feature: Create PDF

  User story:
  As a SALES MANAGER I want to be able to export all products on my bookmark list into PDF so that the vendors can reference it on their laptop as we go through the buy as well as after

  Acceptance criteria:
    * 2 options 'send to' and 'save to' so that I can send to email addresses if on iPad and save to stick if on desktop
    * PDF needs to include the same information that's displayed in the product listings (expanded view)

  Open questions:
    * design - what to do in the bad email address scenario
    * design - richer user experience on 'send pdf' needed
    * devs - how to get the image into the PDF from outside the firewall

  Background:
    Given that I am on the bookmark page
    And I have products in my bookmark

  Scenario: See options about exporting the PDF
    For now we'll just make this a feature on the bookmarks page but 
    will need to work on all listings pages in the future as well

    When I click the "export pdf" button
    Then I am provided with the following options:
      | send to me           |
      | send to other people |
      | open PDF             |

  Scenario: Send PDF to a vendor
    When I click the "export pdf" button
    And I choose to send it to a couple of email addresses
    Then the PDF should be sent to each of those people
    And the emails should be sent from my email address
    And I see a confirmation message containing the recipients' email addresses

  @needs-design
  Scenario: Attempt to send to a bad email address

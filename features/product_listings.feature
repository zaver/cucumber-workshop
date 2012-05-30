Feature: Product listings

  Note: this feature assumes that product data is already displaying and that we don't need a specific scenario for that at this time

DIGI-CAT 357 As a SALES MANAGER I want to be able to see WS images on products if available

  Scenario: see world store images with products
    Given a product with world store image
    When I go to the product listings page
    Then I see the primary world store image for the product

  Scenario: world store images not available
    Given a product with a missing world store image
    When I go to the product listings page
    Then I see a style image for the product 
    And a swatch image for the product


Feature: Delete existing purchase by ID

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Delete purchase by ID
    Given path 'store/order/10'
    When method DELETE
    Then status 404
    And print 'Response:', response

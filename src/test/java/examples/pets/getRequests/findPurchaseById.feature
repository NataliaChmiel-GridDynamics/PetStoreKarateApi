Feature: Finds purchase by ID

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: get purchase by ID
    * def orderId = 12
    Given path 'store/order', orderId
    When method GET
    Then status 200
    And print 'Response:', response

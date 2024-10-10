Feature: Returns pet inventories by status

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: get pets inventories by status
    Given path '/store/inventory'
    When method GET
    Then status 200
    And print 'Response:', response

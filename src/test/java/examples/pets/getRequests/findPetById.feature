Feature: Finds pets by ID

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: get pets by ID
    * def petId = 11
    Given path 'pet', petId
    When method GET
    Then status 200
    And print 'Response:', response

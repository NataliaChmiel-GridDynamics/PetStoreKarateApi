Feature: Delete existing user

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Delete existing user
    Given path 'user/user2'
    When method DELETE
    Then status 404
    And print 'Response:', response

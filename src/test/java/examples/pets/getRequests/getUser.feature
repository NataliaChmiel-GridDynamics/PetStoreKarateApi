Feature: Finds user by user name

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: get user by user name
    * def userName = "user1"
    Given path 'user', userName
    When method GET
    Then status 200
    And print 'Response:', response

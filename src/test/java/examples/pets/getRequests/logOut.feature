Feature: Logout process

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: logout user
    Given path 'user/logout'
    When method GET
    Then status 200
    And print 'Response:', response

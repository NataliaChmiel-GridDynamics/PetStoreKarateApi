Feature: Creates new user profile

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Creates new user
    Given path 'user'
    And request {"id":0,"username":"string","firstName":"string","lastName":"string","email":"string","password":"string","phone":"string","userStatus":0}
    When method POST
    Then status 200
    And print 'Response:', response

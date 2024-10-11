Feature: Creates list of users with given input array

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Creates list of users
    Given path 'user/createWithList'
    And request [{"id":0,"username":"string","firstName":"string","lastName":"string","email":"string","password":"string","phone":"string","userStatus":0}]
    When method POST
    Then status 200
    And print 'Response:', response

Feature: Login with username and password

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: login user
    * def userLogin = "username"
    * def userPassword = "password"
    Given path 'user/login', userLogin, userPassword
    When method GET
    Then status 200
    And print 'Response:', response

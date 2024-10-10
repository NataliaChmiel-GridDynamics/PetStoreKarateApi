Feature: Finds pets by status pending

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: get all pets by status
    Given path 'pet/findByStatus'
    And param status = 'pending'
    When method GET
    Then status 200
    And print 'Response:', response

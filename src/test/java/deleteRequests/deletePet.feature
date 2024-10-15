Feature: Delete existing pet

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Delete pet
    Given path 'pet/16'
    When method DELETE
    Then status 404
    And print 'Response:', response

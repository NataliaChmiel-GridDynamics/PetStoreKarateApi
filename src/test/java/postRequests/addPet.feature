Feature: Add pet to store

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Add pet
    Given path 'pet'
    And request {"id": 0, "category": {"id": 0, "name": "string"}, "name": "doggie", "photoUrls": ["string"],"tags": [{"id": 0, "name": "string"}],"status": "available"}
    When method POST
    Then status 200
    And print 'Response:', response

Feature: Update pet info

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Update pet info
    * def petId = 12
    Given path 'pet', petId

    And request {"id": petId,"category": {"id": 0,"name": "string"},"name": "doggie", "photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "pending"}

    When method POST
    Then status 200
    And print 'Response:', response

Feature: Update existing pet

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Updates pet
    Given path 'pet'
    And request {"id":0,"category":{"id":0,"name":"string"},"name":"doggie","photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"available"}
    When method PUT
    Then status 200
    And print 'Response:', response

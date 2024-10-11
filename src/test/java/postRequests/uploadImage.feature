Feature: Upload image process

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Upload image
    Given path 'pet/15/uploadImage'
    And multipart file file = { read: 'classpath:dog-karate-api.jpeg', filename: 'dog-karate-api.jpeg', contentType: 'image/jpeg' }
    When method POST
    Then status 200
    And print 'Response:', response

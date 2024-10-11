Feature: Place an order for a pet

  Background:
    Given url 'https://petstore.swagger.io/v2'

  Scenario: Order pet
    * def petId = 12
    Given path 'store/order'
    And request {"id":0,"petId":0,"quantity":0,"shipDate":"2024-10-11T10:29:01.231Z","status":"placed","complete":true}
    When method POST
    Then status 200
    And print 'Response:', response

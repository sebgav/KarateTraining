Feature: json place holder validations

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Get info of user
    Given path '/users/3'
    When method GET
    Then status 200
    And print 'response: ',response
    And def respuesta = response
    #Assertions
  And match respuesta.name contains "Clementine Bauch"
    And match respuesta.email contains "Nathan@yesenia.net"



  Scenario: Get all user
    Given path '/users'
    When method GET
    Then status 200
    And print 'response: ',response
    And def respuesta = response
    #Assertions
    And match respuesta[*].name contains "Chelsey Dietrich"
    And match respuesta[*].address.geo.lng contains "62.5342"
    And match respuesta[*].id contains 5
    And match respuesta[*].id contains '#number'
    And match respuesta[*].name contains '#string'
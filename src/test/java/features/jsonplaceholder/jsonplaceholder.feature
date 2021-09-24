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
    And match respuesta[4].name contains 'Chelsey Dietrich'
    And match respuesta[*].name contains 'Chelsey Dietrich'
    And match respuesta[3].address.geo.lat contains '29.4572'
    And match respuesta[*].address.geo.lat contains '29.4572'
    And match respuesta[*].id contains 5
    And match respuesta[4].id contains 5

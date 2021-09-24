Feature: Get All Users


  Scenario: Validate get all data
    Given url 'https://gorest.co.in/'
    And path '/public/v1/users'
    When method GET
    Then status 200

    And assert responseTime < 2000
    And print 'Response: ',response

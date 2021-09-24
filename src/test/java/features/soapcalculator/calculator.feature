Feature: Soap Operations Calculator

  Background:
    * url 'http://www.dneonline.com/calculator.asmx'

    Scenario: Add two values in soap 1.1
      Given request
      """

      """
      When
      Then
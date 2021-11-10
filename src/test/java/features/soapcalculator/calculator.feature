Feature: Soap Operations Calculator

  Background:
    * url 'http://www.dneonline.com/calculator.asmx'

    Scenario: Add two values in soap 1.1
      Given request
      """
      <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:Add>
         <tem:intA>6</tem:intA>
         <tem:intB>3</tem:intB>
      </tem:Add>
   </soapenv:Body>
</soapenv:Envelope>
      """
    When soap action 'http://tempuri.org/Add'
    Then status 200
      And match /Envelope/Body/AddResponse/AddResult
Feature: Obtener Usuario

  Background:
    * configure ssl = true

  Scenario: Crear usuario
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus", "job": "leaderR"}
    When method POST
    Then status 201

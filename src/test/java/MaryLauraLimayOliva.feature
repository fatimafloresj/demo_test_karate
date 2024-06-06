Feature: Obtener Usuario

  Background:
    * configure ssl = true
Scenario: Eliminar usuario
Given url 'https://reqres.in/api/users/2'
When method DELETE
Then status 204
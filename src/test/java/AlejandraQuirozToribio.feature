@second
Feature: Tarea de apis

  Background:
  @api_get01
  Scenario Outline: Ejemplo GET de solo 1 usuario con variables
    Given url 'https://reqres.in/'
    And path '/api/users/'+'<id>'
    When method GET
    Then status <status>
    Examples:
      |id|status|
      |2 |200   |
      |23|404   |

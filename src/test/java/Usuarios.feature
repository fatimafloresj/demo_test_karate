Feature: Obtener Usuario

  Background:
    * configure ssl = true

  Scenario: Obtener usuario por Id
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And match response.data.first_name == '#string'
    And match response.data.id == 2

  Scenario: Crear usuario
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201

  Scenario: Crear usuario 2
    Given url 'https://reqres.in/api/users'
    And request
    """
    {
    "name": "fatima flores",
    "job": "qas"
    }
    """
    When method POST
    Then status 201

  Scenario: Eliminar usuario
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204

    Scenario: Miguel Piscoya
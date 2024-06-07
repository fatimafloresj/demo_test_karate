Feature: Tarea de Apis

  Background:

  @api_get01
  Scenario Outline: Ejemplo Get usuarios de la page 2
    Given url 'https://reqres.in/'
    And path '/api/users?page='+'<id>'
    When method GET
    Then status <status>
    Examples:
      | id | status |
      | 2  | 200    |


  Scenario Outline: Ejemplo Get usuario
    Given url 'https://reqres.in/'
    And path 'api/unknown/'+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 2  | 200    |

  Scenario Outline: Registrar usuario Usando parametros
    Given url 'https://reqres.in/'
    And path 'api/users'
    And request <json>
    When method POST
    Then status <status>

    Examples:
      | json | status |
      | {"name": "JOSUE","job": "DEVELOPER"}  | 201    |


  Scenario: Ejemplo POST sin parametros
    Given url 'https://reqres.in/'
    And path '/api/users'
    When method POST
    And request {"name": "Siguenza","job": "estudiante"}
    Then status 201

  Scenario Outline: Ejemplo Externa (Get), listar todos los empleados
    Given url 'https://hmintegracion.azurewebsites.net'
    And path '/api/v01/st/empleado'
    When method GET
    Then status <status>
    Examples:
      | status |
      | 200    |

  Scenario: Ejemplo PUT
    Given url 'https://reqres.in/'
    And path '/api/users/2'
    When method PUT
    And request {"name": "morpheus","job": "zion resident"}
    Then status 200

  Scenario Outline: Delete
    Given url 'https://reqres.in/'
    And path 'api/users/2'
    When method DELETE
    Then status <status>
    Examples:
      | status |
      | 204    |


  Scenario Outline: Ejemplo Get user
    Given url 'https://reqres.in/'
    And path '/api/users?delay='+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 3  | 200    |

  Scenario Outline: Ejemplo, api de chuck
    Given url 'https://api.chucknorris.io'
    And path '/jokes/categories'
    When method GET
    Then status <status>

    Examples:
      | status |
      | 200    |

  Scenario Outline: Ejemplo, listado de anime
    Given url 'https://reqres.in/'
    And path 'api/register'
    When method POST
    And request {"email": "sydney@fife"}
    Then status <status>

    Examples:
      | status |
      | 400    |

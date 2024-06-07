@second

Feature: Tarea de Apis

  Background:

  @api_get01

  Scenario Outline: Ejemplo 1 Get Single User
    Given url 'https://reqres.in/'
    And path '/api/users/'+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 2  | 200    |
      | 23 | 404    |

  Scenario Outline: Ejemplo 2 Get Single Resource
    Given url 'https://reqres.in/'
    And path '/api/unknown/'+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 2  | 200    |
      | 23 | 404    |

  Scenario Outline: Ejemplo 3 Get Swaager Pet
    Given url 'https://petstore3.swagger.io/'
    And path '/api/v3/pet/'+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 6  | 200  |
      | 1  | 404  |

  Scenario Outline: Ejemplo 4 Get Swaager Store
    Given url 'https://petstore3.swagger.io/'
    And path '/api/v3/order/'+'<id>'
    When method GET
    Then status <status>

    Examples:
      | id | status |
      | 1  | 404  |

  Scenario Outline: Ejemplo 5 Post Create
    Given url 'https://reqres.in/'
    And path '/api/users'+'<json>'
    When method POST
    Then status <status>

    Examples:
      | json | status |
      | {"name": "morpheus", "job": "leader"}  | 201  |

  Scenario Outline: Ejemplo 6 Post Register
    Given url 'https://reqres.in/'
    And path '/api/register'+'<json>'
    When method POST
    Then status <status>

    Examples:
      | json | status |
      | {"email": "eve.holt@reqres.in", "password": "pistol"}  | 201 |

  Scenario Outline: Ejemplo 7 Post Login
    Given url 'https://reqres.in/'
    And path '/api/login'+'<json>'
    When method POST
    Then status <status>

    Examples:
      | json | status |
      | {"email": "eve.holt@reqres.in", "password": "cityslicka"}  | 201 |

  Scenario Outline: Ejemplo 8 Update User
    Given url 'https://reqres.in/'
    And path '/api/users/2'+'<json>'
    When method PATCH
    Then status <status>

    Examples:
      | json | status |
      | {"name": "morpheus", "job": "zion resident"}  | 200  |

  Scenario Outline: Ejemplo 9 Delete
    Given url 'https://reqres.in/'
    And path '/api/users/'+'<id>'
    When method DELETE
    Then status <status>

    Examples:
      | id | status |
      | 2  | 204  |

  Scenario Outline: Ejemplo 10 Delete Swaager Order
    Given url 'https://petstore3.swagger.io/'
    And path '/api/v3/store/order/'+'<id>'
    When method DELETE
    Then status <status>

    Examples:
      | id | status |
      | 5  | 200  |
      | a  | 400  |

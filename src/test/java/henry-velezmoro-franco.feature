# new feature
# Tags: optional
@second
Feature: Tarea de apis

    Background:
    @api_get01
    Scenario Outline: Ejemplo GET de solo 1 usuario
        Given url 'https://reqres.in'
        And path '/api/users/'+'<id>'
        When method GET
        Then status <status>
        Examples:
            | id | status |
            | 2  | 200    |
            | 23 | 404    |

    @api_get02
    Scenario: Ejemplo GET de usuarios
        Given url 'https://reqres.in'
        And path '/api/users'
        When method GET
        Then status 200

    @api_get03
    Scenario Outline: Ejemplo GET de solo 1 resource
        Given url 'https://reqres.in'
        And path '/api/resource/'+'<id>'
        When method GET
        Then status <status>
        Examples:
            | id | status |
            | 1  | 200    |
            | 23 | 404    |

    @api_get04
    Scenario: Ejemplo DELETE de 1 usuario
        Given url 'https://reqres.in'
        And path '/api/users/1'
        When method DELETE
        Then status 204

    @api_get05
    Scenario: Ejemplo POST crear usuario
        Given url 'https://reqres.in'
        And path '/api/users'
        When method POST
        And request
        """{ "name": "morpheus", "job": "leader" }"""
        Then status 201

    @api_get06
    Scenario: Ejemplo PUT actualizar usuario
        Given url 'https://reqres.in'
        And path '/api/users/2'
        When method PUT
        And request
        """{ "name": "henry", "job": "developer" }"""
        Then status 200

    @api_get07
    Scenario: Ejemplo PATCH actualizar usuario
        Given url 'https://reqres.in'
        And path '/api/users/2'
        When method PUT
        And request
        """{ "name": "henry", "job": "QA" }"""
        Then status 200

    @api_get08
    Scenario: Ejemplo PUT actualizar resource
        Given url 'https://reqres.in'
        And path '/api/resource/1'
        When method PUT
        And request
        """{ "name": "black", "year": 2024, , "color": "#98B2D1" }"""
        Then status 200

    @api_get09
    Scenario: Ejemplo PATCH actualizar resource
        Given url 'https://reqres.in'
        And path '/api/resource/3'
        When method PUT
        And request
        """{ "name": "true red", "year": 2022, , "color": "#C74375" }"""
        Then status 200

    @api_get10
    Scenario: Ejemplo DELETE de 1 resource
        Given url 'https://reqres.in'
        And path '/api/resource/3'
        When method DELETE
        Then status 204
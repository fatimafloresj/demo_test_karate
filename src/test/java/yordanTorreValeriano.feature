@apis_get05
Scenario Outline: Actualizacion de Usuario
Given url 'https://reqres.in/' + '/api/users/'
And request
"""{"name": "<name>" , "job": "<job>"}"""
When method PATCH
Then status <status>

Examples:
|name      |job            |status|
| morpheus |zion resident  |200    |
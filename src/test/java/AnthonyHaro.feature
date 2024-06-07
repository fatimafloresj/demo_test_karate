Scenario: Eliminar usuario 1
Given url 'https://reqres.in/api/users/2'
When method DELETE
Then status 204
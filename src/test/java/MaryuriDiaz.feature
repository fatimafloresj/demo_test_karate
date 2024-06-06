Scenario: creación por id
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And match response.data.first_name == '#string'
And match response.data.id == 2
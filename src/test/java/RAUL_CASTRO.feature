@second

Feature: Tarea de Apis

  Background:
  @api_oget01

  Scenario Outline: Ejemplo Creando usuario Method POST
  Given url 'https://reqres.in/'
  And path '/api/users'
  When method POST
  And request
  """
        {
         "nombre":  "'<nombre>'" ,
         "trabajo":  "'<trabajo>'"
         }
       """
  Then status <status>

  Examples:
  | nombre      | trabajo      | status |
  | Raul Castro | QA           | 201    |
  | Luis Panta  | Scrum Master | 201    |
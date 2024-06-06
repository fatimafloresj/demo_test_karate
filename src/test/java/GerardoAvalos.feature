Feature: Login de Usuario
  Como un usuario registrado
  Quiero poder iniciar sesión en la aplicación
  Para acceder a las funcionalidades protegidas

  Scenario: Login exitoso con credenciales válidas actualizado 2
    Given el usuario está en la página de login
    When el usuario ingresa su nombre de usuario "usuario_valido" y la contraseña "contraseña_valida"
    And hace clic en el botón de "Iniciar sesión"
    Then el usuario debería ser redirigido a la página principal
    And debería ver un mensaje de bienvenida
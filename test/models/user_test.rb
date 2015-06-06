require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # Se agregan pruebas en proyecto y se corren directamente en la consola

  test " un usuario deberia entrar su primer nombre" do
  	user = User.new #Se crea variable de un nuevo usuario
  	assert !user.save #Palabra clave q se utiliza en el ambito de las pruebas para definir un comportamiento
  end

end

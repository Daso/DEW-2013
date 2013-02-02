#Calculadora.rb
class Calculadora
  def suma(a, b)
    a + b
  end

  def resta(a, b)
    a - b
  end

  def multiplica(a , b)
    a * b
  end

  def no_es_cero(g)
    g != 0
  end

  def divide(a, b)
   no_es_cero(b) ? a / b : 0
  end
end
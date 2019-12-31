class Person
  def initialize name = nil
    @name = name
  end

  def greet
    "Olá, me chamo #{@name}!" if @name
  end
end

p1 = Person.new "Luiz Felipe"
puts p1.greet

p2 = Person.new
puts p2.greet || "Não retornou nada."

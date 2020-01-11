module FirstModule
  def first_method
    1
  end

  def self.included(klass)
    puts "FirstModule was included in #{klass}."
  end
end

module SecondModule
  include FirstModule

  def second_method
    2
  end

  def self.included(klass)
    puts "SecondModule was included in #{klass}."
  end
end

class MyClass
  include SecondModule
end

# Output log:
#
#   FirstModule was included in SecondModule.
#   SecondModule was included in MyClass.

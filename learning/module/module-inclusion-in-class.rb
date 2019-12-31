module FirstModule
  def first_method
    "First Method"
  end

  def self.included(klass)
    p klass.instance_methods.include?(:first_method) # => true
  end
end

class MyClass
  include FirstModule
end

ins = MyClass.new
p ins.first_method

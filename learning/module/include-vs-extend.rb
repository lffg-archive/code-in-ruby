def try
  return unless block_given?

  begin
    yield
  rescue => exception
    "ERR: #{exception.message}"
  end
end

module MyModule
  def a
    "MyModule#a"
  end
end

class FirstClass
  include MyModule
end

class SecondClass
  extend MyModule
end

puts try { FirstClass.new.a }
puts try { FirstClass.a }

puts try { SecondClass.new.a }
puts try { SecondClass.a }

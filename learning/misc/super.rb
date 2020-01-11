class Parent
  def log(a, b, c)
    puts "From parent: #{a} #{b} #{c}"
  end
end

class ChildA < Parent
  def log(a, b, c)
    puts "From child a: #{a} #{b} #{c}"
    super 7, 8, 9
  end
end

class ChildB < Parent
  def log(a, b, c)
    puts "From child b: #{a} #{b} #{c}"
    super
  end
end

ChildA.new.log(1, 2, 3)

puts "-" * 10

ChildB.new.log(4, 5, 6)

class Person
  # Will create only "getter" methods for the given fields.
  # For "setter"-only methods, use `attr_writer`.
  attr_reader :created_at

  # Will create "getter" and "setter" methods for the given fields.
  attr_accessor :name, :age

  def initialize
    @name = nil
    @age = nil
    @created_at = Time.zone.now
  end
end

p = Person.new
p.name = "Luiz Felipe"
p.age = 17

puts "Name: #{p.name}"
puts "Age: #{p.age}"
puts "Created At: #{p.created_at}"

begin
  # Will raise an exception, as `created_at` has only a read accessor.
  p.created_at = Time.zone.now + 60**2 * 24
rescue StandardError
  puts "Caught! An exception was thrown."
end

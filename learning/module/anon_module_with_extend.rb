my_mod = Module.new do
  def custom_lower
    puts "Current: #{self}."
    downcase
  end
end

name = "Luiz"
name.extend(my_mod)

puts "New value: #{name.custom_lower}"

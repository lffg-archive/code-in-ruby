# Ignore:
def humanize(*args)
  args.map { |arg| !arg ? "Undefined" : arg }.join(", ")
end

#
# POSITIONAL ARGUMENTS
#

def positional_arguments a, b, c
  puts "Positional arguments: #{humanize(a, b, c)}."
end

# You may pass default values:
def positional_arguments_with_default_values a = 7, b = 8, c = 9
  puts "Positional arguments with default values: #{humanize(a, b, c)}."
end

positional_arguments 1, 2, 3 # => Positional arguments: 1, 2, 3.
positional_arguments_with_default_values # => Positional arguments with default values: 7, 8, 9.

#
# KEYWORD ARGUMENTS
#

# You must pass default values to a function that accepts keyword arguments.
def keyword_arguments a: nil, b: nil, c: nil
  puts "Keyword arguments: #{humanize(a, b, c)}."
end

keyword_arguments # => Keyword arguments: Undefined, Undefined, Undefined.
keyword_arguments a: 1, b: 2, c: 3 # => Keyword arguments: 1, 2, 3.

#
# The `*` and `**` operators:
#

# The star `*` operator will convert all the given arguments to an array, which
# can be used by the method.
#
# It can also be used to convert an array into a "multi-value-callable form", as
# seen in a previous example.
def star_operator_test *args
  p args
end

star_operator_test 1, 2, 3 # => [1, 2, 3]

# The double-star operator will convert all the "named-arguments" to a hash,
# which can be used by the method.
#
# It can also be used to convert an hash into a "multi-value-callable form", as
# seen in a previous example.
def double_star_operator_test **dict_args
  p dict_args
end

double_star_operator_test x: 10, y: 20, z: 30 # => {:x=>10, :y=>20, :z=>30}

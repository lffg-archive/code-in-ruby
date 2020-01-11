# if, unless, while, until, for, break, next, redo

(0..3).to_a.each do |_value|
  if arg == 1
    "Arg is one"
  elsif arg == 2
    "Arg is two"
  else
    "Arg is unknown"
  end
end

# `unless` é o mesmo que `if !(cond)`

# COllections exercises - Exercise 3

# Throw out ages 100 and older

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|_, value| value > 100}

puts ages

# OR

ages.keep_if { |_, age| age < 100 }
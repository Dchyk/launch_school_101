# easy 2 question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")

ages.has_key?("Spot")

age.select {|key, value| key == "Spot"} # This doesn't check it if exists, just returns it - not a good answer?

ages.key?("Spot")
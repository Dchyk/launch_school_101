# Collections exercises - Exercise 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  if (0..17).cover?(info["age"])   # info is a nested array, so "age" is the key 
    info["age_group"] = "kid"
  elsif (18..67).cover?(info["age"])
    info["age_group"] = "adult"
  elsif munsters[name]["age"] >= 65
    info["age_group"] = "senior"
  end
end

puts munsters
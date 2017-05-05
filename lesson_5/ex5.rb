# Lesson 5 Exercise 5

# Given this nested Hash:ure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = 0

munsters.each do |name, info|
  if info["gender"] == "male"
    male_ages += info["age"]
  end
end

puts male_ages
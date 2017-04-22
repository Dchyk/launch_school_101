# Medium 1 Question 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# Does the family's data get ransacked by this?

mess_with_demographics(munsters)

# Yes, because the values contained in the munsters hash are modified -
# so even though the original hash itself is still pointed at by munsters, 
# it contains modified values

p munsters

# Why? Remember that in Ruby, what gets passed in the parameter list 
# is not what it appears. Under the hood, ruby passes the object id 
# of each item rather than the value of the parameter. 
# The method internally stores these object id's in locally scoped 
# (private to the method) variables (named per the method definition's 
# parameter list).

# So Spot's demo_hash starts off pointing to the munsters hash. 
# His program could wind up replacing that with some other object id 
# and then the family's data would be safe.

# In this case, the program does not reassign demo_hash -- it just uses 
# it as-is. So the actual hash object that is being messed with inside 
# of the method IS the munsters hash.
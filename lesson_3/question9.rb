# Question 9 

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.delete_if {|key, value| key != "Barney"}

barney_array = flinstones.flatten

# Output => ["Barney", 2]

# LS Solution: 

flintstones.assoc("Barney")

#=> ["Barney", 2]
advice = "Few things in life are as important as house training your pet dinosaur."
 
advice.slice!(0..38) # My solution

# LS solution:

advice.slice!(0, advice.index('house'))

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice(0..38) # returns the first half of the sentence, but advice is unchanged


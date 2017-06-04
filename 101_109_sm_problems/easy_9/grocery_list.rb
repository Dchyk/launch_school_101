# Easy 9 Exercise 10 - Grocery List


def buy_fruit(array)
  all_fruits = []

  array.each do |sub_array|
    (sub_array[1]).times do 
      all_fruits << sub_array[0]
    end
  end

  all_fruits
end


# Examples

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
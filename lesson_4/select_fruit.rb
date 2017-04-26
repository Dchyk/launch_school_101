produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash_name)
  selected_items = {}
  counter = 0

  hash_name.each do |key, value|
    if hash_name[key] == 'Fruit'
      selected_items[key] = hash_name[key]
    end
  end

selected_items
end


puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
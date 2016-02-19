def even_finder(list_of_nums)
  evens = []
  list_of_nums.each do |num|
    evens << num if num % 2 == 0
  end
  evens
end

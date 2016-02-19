def even_finder(list_of_nums)
  evens = []
  list_of_nums.each do |num|
    evens << num if num % 2 == 0
  end
  evens
end

# even_finder([1,2,5,8]) => [2,8]

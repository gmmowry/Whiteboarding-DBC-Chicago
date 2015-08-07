
def flatten(array)
    flattened = []

    array.each do |item|
        if item.kind_of? Array
            flattened += flatten(item)
        else
            flattened << item
        end
    end
    flattened
end

# Tests
puts flatten([1]) == [1]
puts flatten([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
puts flatten([[1], 2, 3, [4, 5]]) == [1, 2, 3, 4, 5]
puts flatten([1, [2, [3, 4], 5]]) == [1, 2, 3, 4, 5]
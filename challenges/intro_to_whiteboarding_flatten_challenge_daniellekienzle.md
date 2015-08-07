# Create the Ruby method *flatten*
* takes one array argument that may have multiple nested arrays
* outputs a new one-dimensional array
(i.e. for every element in the input array, extract its elements into the new array)

### Example:
    input = [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
    flatten(input) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
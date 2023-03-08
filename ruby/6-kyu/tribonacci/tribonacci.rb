def tribonacci(signature,n)
    # If n == 0, return []
    # If n < 3, return the first n things
    # If n >= 3, return the first n elements of the tribonacci sequence
    # Sequence of numbers where the next number is the sum of the previous 3 numbers
    # so while we are less than n, we want to add the sum of the last 3 numbers to the end of the array
    # we can access the last 3 three of an array by using the range operator and exploiting the fact that
    # the last element of an array is at index -1 and the last 3 elements are at index -3..-1
    # we can use the sum method on an array to get the sum of all the elements in the array
    # and shovel that onto the end of the array so that we can keep adding to the array to 'n' elements
    return [] if n == 0
    return signature[0...n] if n < 3 # to prevent when n is small
    while signature.length < n
     signature << signature[-3..-1].sum
    end
    signature
end
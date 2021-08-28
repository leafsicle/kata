def find_average(numbers):
    length =len(numbers)
    sum=0
    for num in numbers:
        sum += num
    return sum/length

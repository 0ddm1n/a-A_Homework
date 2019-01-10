def sum_to(n)
    return nil if n < 0
    return n if n == 1 || n == 0

    n + sum_to(n - 1) 
end

def add_numbers(nums_array)
    return nil if nums_array.empty?

    results = nums_array.pop
    results += add_numbers(nums_array) unless nums_array.empty?
    results
end

#  Helper function for Gamma Function
def factorial(num)   
    return 1 if num < 1
    num * factorial(num - 1)
end

def gamma_fnc(num)
    return nil if num < 1
    factorial(num - 1)
end



def ice_cream_shop(flavors, favorite)
    results = false
    curr_flavor = flavors.pop
    
    results
end


def reverse(string)

end




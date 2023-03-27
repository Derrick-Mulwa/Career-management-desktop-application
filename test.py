var_name = "update"

# using globals() to create a new function with the name stored in var_name
def my_complex_func(x, y):
    z = x ** 2 + y ** 2
    return z

globals()[var_name] = my_complex_func

# calling the new function using the variable name stored in var_name
result = globals()[var_name](3, 4)
print(result)  # outputs: 25

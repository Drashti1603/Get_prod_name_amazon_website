# file_operations.py
def Append_Product_Details(file_name, name, price, rating, number):
    with open(file_name, 'a', newline='', encoding='utf-8') as csvfile:
        csvfile.write(f"{name}\n,{price}\n{rating}\n{number}\n\n")

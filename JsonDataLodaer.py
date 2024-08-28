import json as js

def jsonLoading(GenericName):
        file = open('josnData//GenericData.json')
        data=js.load(file)
        if GenericName=="Fresh Products":
            freshProduct=data["Fresh Products"]
            return freshProduct
        elif GenericName=="Bakery Products":
            bakeryProduct=data["Bakery Products"]
            return bakeryProduct
        elif GenericName=="Beverages Products":
            beveragesProducts=data["Beverages Products"]
            return beveragesProducts
        elif GenericName=="Dairy Products":
            dairyProducts=data["Dairy Products"]
            return dairyProducts
        elif GenericName=="NutsDryFruits":
            nutsDryFruits=data["NutsDryFruits"]
            return nutsDryFruits
        elif GenericName=="PantryStaples":
            pantryStaples=data["PantryStaples"]
            return pantryStaples
        else:
            return


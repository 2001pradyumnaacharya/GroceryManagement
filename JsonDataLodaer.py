import json as js

def jsonLoading(GenericName):
        file = open('josnData//GenericData.json')
        data=js.load(file)
        if GenericName=="Fresh Products":
            freshProduct=data["Fresh Products"]
            file.close()
            return freshProduct
        elif GenericName=="Bakery Products":
            bakeryProduct=data["Bakery Products"]
            file.close()
            return bakeryProduct
        elif GenericName=="Beverages Products":
            beveragesProducts=data["Beverages Products"]
            file.close()
            return beveragesProducts
        elif GenericName=="Dairy Products":
            dairyProducts=data["Dairy Products"]
            file.close()
            return dairyProducts
        elif GenericName=="NutsDryFruits":
            nutsDryFruits=data["NutsDryFruits"]
            file.close()
            return nutsDryFruits
        elif GenericName=="PantryStaples":
            pantryStaples=data["PantryStaples"]
            file.close()
            return pantryStaples
        else:
            file.close()
            return

def jsonGenericLoading():
        file = open('josnData//GenericData.json')
        data=js.load(file)
        genericDatas=data["genericData"]
        file.close()
        return genericDatas

def jsoncartLoading():
    file = open('josnData//cart.json')
    data=js.load(file)
    file.close()
    return data


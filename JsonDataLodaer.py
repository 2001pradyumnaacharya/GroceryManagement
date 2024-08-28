import json as js

def getJsonFreshProduct():
        file = open('josnData//GenericData.json')
        data=js.load(file)
        freshProduct=data["Fresh Products"]
        return freshProduct

def getJsonBeakeryProduct():
    file = open('josnData//GenericData.json')
    data=js.load(file)
    bakeryProduct=data["Bakery Products"]
    return bakeryProduct

def getJsonBeveragesProduct():
    file = open('josnData//GenericData.json')
    data=js.load(file)
    beveragesProducts=data["Beverages Products"]
    return beveragesProducts

def getJsonDairyProduct():
    file = open('josnData//GenericData.json')
    data=js.load(file)
    dairyProducts=data["Dairy Products"]
    return dairyProducts

def getJsonPantryStaplesProduct():
    file = open('josnData//GenericData.json')
    data=js.load(file)
    nutsDryFruits=data["NutsDryFruits"]
    return nutsDryFruits

def getJsonNutsDryFruitsProduct():
    file = open('josnData//GenericData.json')
    data=js.load(file)
    pantryStaples=data["PantryStaples"]
    return pantryStaples

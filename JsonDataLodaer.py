import json as js

def getJsonFreshProduct():
        file = open('josnData//freshProduct.json')
        data=js.load(file)
        # print(data)
        return data

def getJsonBeakeryProduct():
        file = open('josnData//BeakeryProducts.json')
        data=js.load(file)
        # print(data)
        return data
def getJsonBeveragesProduct():
        file = open('josnData//Beverages.json')
        data=js.load(file)
        # print(data)
        return data

def getJsonDairyProduct():
        file = open('josnData//DairyProduct.json')
        data=js.load(file)
        # print(data)
        return data
def getJsonPantryStaplesProduct():
        file = open('josnData//PantryStaples.json')
        data=js.load(file)
        # print(data)
        return data
def getJsonNutsDryFruitsProduct():
        file = open('josnData//NutsDryFruits.json')
        data=js.load(file)
        # print(data)
        return data

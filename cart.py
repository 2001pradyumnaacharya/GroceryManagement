imgurls = []
productName = []
quantity = []
productPrice = []
cart = {
"imgs": imgurls,
"products": productName,
"quantity": quantity,
"cost": productPrice
}

def addToCart(imgurl, productname, quant, price):

    for i in range(len(cart["imgs"])):
        if cart["imgs"][i]==imgurl and cart["products"][i]==productname :
            print("product Already exists")
            return
    imgurls.append(imgurl)
    productName.append(productname)
    quantity.append(quant)
    productPrice.append(price)

def displayCart():
    for i in range(len(productName)):
        print(f"Product: {productName[i]}, Quantity: {quantity[i]}, Price: {productPrice[i]}, Image URL: {imgurls[i]}")

def clearCart():
    imgurls.clear()
    productName.clear()
    quantity.clear()
    productPrice.clear()
    print("Cart cleared")

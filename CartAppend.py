import json as js
def cart(imgurl,tittle,totalPrice):
    try:
       cart={"imgurl":imgurl,"nameOfProduct":tittle,"totalcost":totalPrice}
       file = open('josnData//Cart.json','r+')
       generalData=js.load(file)
       generalData.append(cart)
       file.seek(0)
       js.dump(generalData,file)
       return True
    except:
        return False

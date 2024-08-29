import sys
from pathlib import Path
from PySide6.QtCore import QObject, Signal, Slot, QJsonDocument
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
import cart as cartraly
import JsonDataLodaer as jsonLoader
import CartJsonOper as cart

class Interface(QObject):
    signal = Signal()

    def __init__(self, engine):
        super().__init__()
        self.engine = engine

    @Slot(str, str, int, str)
    def cartManagerment(self, imgurl, productname, quantity, price):
        if quantity >= 1:
            cartraly.addToCart(imgurl, productname, quantity, price)
        self.signal.emit()

    @Slot()
    def display(self):
        cartraly.displayCart()

    @Slot()
    def clear(self):
        cartraly.clearCart()
        print("cleared")


    @Slot(str,result=str)
    def jsonLoader(self,GenericName):
        data=jsonLoader.jsonLoading(GenericName)
        jsonDoc=QJsonDocument.fromVariant(data)
        jsonProductStr=jsonDoc.toJson().data().decode('utf-8')
        return jsonProductStr

    @Slot(result=str)
    def jsonCartLoader(self):
        data=jsonLoader.jsoncartLoading()
        jsonDoc=QJsonDocument.fromVariant(data)
        jsonCartStr=jsonDoc.toJson().data().decode('utf-8')
        return jsonCartStr

    @Slot(result=str)
    def jsonGenericLoader(self):
        data=jsonLoader.jsonGenericLoading()
        jsonDoc=QJsonDocument.fromVariant(data)
        jsonGenericStr=jsonDoc.toJson().data().decode('utf-8')
        return jsonGenericStr

    @Slot(str,str,str,result=bool)
    def cartappend(self,img,tittle,price):
       if cart.cart(img,tittle,price):
           return True
       else:
           return False

    @Slot()
    def emptyJsonFile(self):
        cart.emptyJson()

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    interface = Interface(engine)
    engine.rootContext().setContextProperty("middle", interface)

    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file)
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())

import sys
from pathlib import Path
from PySide6.QtCore import QObject, Signal, Slot
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
import cart as cartraly

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

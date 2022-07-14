class TestClass:
    a = 5
    def myTestmethodName(self):
        print("Testing Robot framework")

    def addTwoNumbers(self, a, b):
        print(a+b)

    def HowToReturnValues(self, a, b):
        x = "mobile"
        if a > b:
            x = "computer"
        else:
            x = "book"
        return x

obj = TestClass()
obj.myTestmethodName()
obj.addTwoNumbers(5, 5)
print(obj.HowToReturnValues(10, 4))
print(obj.HowToReturnValues(10, 44))
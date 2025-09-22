class bankaccount:
    def __init__(self,initial_balance=0.0):
        self.__balance=initial_balance

    def deposit(self,amount):

        if amount <=0:
            print("amount enter should be positive")
            return
        self.__balance+=amount
        print(f"deposit {amount},new balance:{self.__balance}")

    def withdraw(self,amount):
        if amount <=0:
            print("Amount enter below available balance")
            return
        self.__balance-=amount
        print(f"withdraw {amount},new balance:{self.__balance}")

    def getamount(self):
        return self.__balance
account=bankaccount(100)
print("initial balance:",account.getamount())
account.deposit(100)
account.withdraw(30)
account.withdraw(100)
print("Final balance:",account.getamount())
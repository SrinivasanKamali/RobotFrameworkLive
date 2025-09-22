class car:
    def __init__(self,brand,model,mileage):
        self.brand=brand
        self.model=model
        self.mileage=mileage

    def display_details(self):
        print(f"Car brand name is:{self.brand},and model year is :{self.model},mileage per KM:{self.mileage}")

sample=car("BMW",2025,25)
sample.display_details()
import Foundation
//1. lase base
class BaseVehicleInformation {
    var vehicleBrand: String
    var vehicleModel: String
    var yearOfManufactureVehicle: Int

    init(vehicleBrand: String, vehicleModel: String, yearOfManufactureVehicle: Int) {
        self.vehicleBrand = vehicleBrand
        self.vehicleModel = vehicleModel
        self.yearOfManufactureVehicle = yearOfManufactureVehicle
    }
//5. metodo impresion info
    func printVehicleInformation() {
        print("El vehículo disponible es de marca \(vehicleBrand), modelo \(vehicleModel) y está en el año \(yearOfManufactureVehicle).")
    }
//5. metodo cambio año
    func changeOfYearOfManufacture(newYear: Int) {
        yearOfManufactureVehicle = newYear
    }
}
//2. subclase
class CarInformation: BaseVehicleInformation {
    var numberOfDoorsCar: Int

    init(vehicleBrand: String, vehicleModel: String, yearOfManufactureVehicle: Int, numberOfDoorsCar: Int) {
        self.numberOfDoorsCar = numberOfDoorsCar
        super.init(vehicleBrand: vehicleBrand, vehicleModel: vehicleModel, yearOfManufactureVehicle: yearOfManufactureVehicle)
    }
//6. metodo impresion info carro
    func printCarInformation() {
        printVehicleInformation()
        print("Este automóvil tiene \(numberOfDoorsCar) puertas.\n")
    }
}
//3. subclase
class BicycleInformation: BaseVehicleInformation {
    var numberOfBrands: Int

    init(vehicleBrand: String, vehicleModel: String, yearOfManufactureVehicle: Int, numberOfBrands: Int) {
        self.numberOfBrands = numberOfBrands
        super.init(vehicleBrand: vehicleBrand, vehicleModel: vehicleModel, yearOfManufactureVehicle: yearOfManufactureVehicle)
    }
//7. metodo impresion info bici
    func printBicycleInformation() {
        printVehicleInformation()
        print("Esta bicicleta tiene \(numberOfBrands) marchas.\n")
    }
}
//4. instancias
var carTipetruckAvailable = CarInformation(vehicleBrand: "Cadillac", vehicleModel: "Escalade Platinum", yearOfManufactureVehicle: 2022, numberOfDoorsCar: 5)

var bicycleAvailable = BicycleInformation(vehicleBrand: "Specialized", vehicleModel: "Tarmac", yearOfManufactureVehicle: 2019, numberOfBrands: 10)
 
print ("DATOS CARRO DISPONIBLE")
carTipetruckAvailable.printCarInformation()

print ("DATOS CON MODIICACION AÑO - CARRO DISPONIBLE")
carTipetruckAvailable.changeOfYearOfManufacture(newYear: 2023)
carTipetruckAvailable.printVehicleInformation()
print()
print ("DATOS BICI DISPONIBLE")
bicycleAvailable.printBicycleInformation()

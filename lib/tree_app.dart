import "package:tree/tree.dart";



void main() {
  var catHouse = Category("House", null, uuid: "1");
  var catMorgage = Category("Mortgage", catHouse.uuid, uuid: "11");
  var catRent = Category("Rent", catHouse.uuid, uuid: "12");

  var catUtilities = Category("Utilities", null, uuid:"2");
  var catElectricity = Category("Electricity", catUtilities.uuid, uuid:"21");
  var catGas = Category("Gas", catUtilities.uuid, uuid:"22");
  var catCar = Category("Car", null, uuid:"3");
  var catGasoline = Category("Gasoline", catCar.uuid, uuid:"31");
  var catCarService = Category("Car Service", catCar.uuid, uuid:"32");

  var categories = [
    catHouse,
    catMorgage,

    catRent,
    catUtilities,
    catElectricity,
    catGas,
    catCar,
    catGasoline,
    catCarService

  ];

  print(categories);

//  print(getCategoriesTree(categories));


print( TreeNode.fromList(categories) );
}

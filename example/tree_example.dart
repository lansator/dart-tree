import "package:tree/tree.dart";
import "package:uuid/uuid.dart";


class Category extends WithUuid {
  String _uuid;
  String name;
  String _parentUuid;
  int fontPointCode;
  String fontFamily;
  String fontPackage;

  Category(this.name, this._parentUuid,
      {this.fontPointCode, this.fontFamily, this.fontPackage, String uuid}) {
//    this._uuid = uuid;
    this._uuid = uuid ?? Uuid().v4();
  }

  String get parentUuid => _parentUuid;

  String toString() => "{category name:[$name] uuid:[$uuid] parent_uuid:[$_parentUuid] }";
}


void main() {
//  var catRoot = Category("root",null);
//  print(catRoot);

/*
  var catHouse = Category("House", null, uuid: "1");
//  print(catHouse);
  var catMorgage = Category("Mortgage", catHouse.uuid, uuid: "11");
  var catRent = Category("Rent", catHouse.uuid, uuid: "12");

  var catUtilities = Category("Utilities", null, uuid:"2");
  var catElectricity = Category("Electricity", catUtilities.uuid, uuid:"21");
  var catGas = Category("Gas", catUtilities.uuid, uuid:"22");
  var catCar = Category("Car", null, uuid:"3");
  var catGasoline = Category("Gasoline", catCar.uuid, uuid:"31");
  var catCarService = Category("Car Service", catCar.uuid, uuid:"32");

  var categories = [
//    catRoot,
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

*/
  var catHouse = Category("House", null);
  var catMorgage = Category("Mortgage", catHouse.uuid);
    var catRent = Category("Rent", catHouse.uuid);

  var catUtilities = Category("Utilities", null);
  var catElectricity = Category("Electricity", catUtilities.uuid);
  var catGas = Category("Gas", catUtilities.uuid);
  var catCar = Category("Car", null);
  var catGasoline = Category("Gasoline", catCar.uuid);
  var catCarService = Category("Car Service", catCar.uuid);

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
//    debugPrint(_categories.toString());

  categories.forEach( print);

//  print(getCategoriesTree(categories));


//  print( TreeNode.fromList(categories, catRoot) );
  print( TreeNode.fromList(categories) );
}

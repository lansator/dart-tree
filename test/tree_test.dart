import 'package:tree/tree.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

class Category extends WithUuid {
  String _uuid;
  String name;
  String _parentUuid;
  int fontPointCode;
  String fontFamily;
  String fontPackage;

  Category(this.name, this._parentUuid,
      {this.fontPointCode, this.fontFamily, this.fontPackage, String uuid}) {
    this._uuid = uuid ?? Uuid().v4();
  }

  String toString() => "{category [$name] uuid=[$uuid] parent_uuid=[$parentUuid] }";
}

void main() {
  group('A group of tests', () {
    Awesome awesome;

    setUp(() {
      awesome = new Awesome();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}

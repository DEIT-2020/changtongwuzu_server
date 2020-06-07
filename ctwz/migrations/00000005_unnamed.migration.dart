import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration5 extends Migration { 
  @override
  Future upgrade() async {
		database.createTable(SchemaTable("_Card", [SchemaColumn("cardnum", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("type", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: true),SchemaColumn("title", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("knowledge", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("area", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
Future seed() async {
  final cardNums = ["1", "2", "3"];
  for (final cardNum in cardNums) {    
    await database.store.execute("INSERT INTO _card (cardnum) VALUES (@cardnum)", substitutionValues: {
      "cardnum": cardNum
    });
  }
}
}
    
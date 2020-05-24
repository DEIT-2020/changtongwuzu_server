import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_Card", [SchemaColumn("cardnum", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("type", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("title", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("knowledge", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("area", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
  final cardTitles = ["什么是白带", "什么是白带常规", "什么样的月经是正常的", "如何推迟月经", "宫颈病变"];

  for (final cardTitle in cardTitles) {    
    await database.store.execute("INSERT INTO _Card (title) VALUES (@title)", substitutionValues: {
      "cardTitle": cardTitle
    });
  }
}
}
    
import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_Ctwz", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final ctwzNames = ["Mr. Nice", "Narco", "Bombasto", "Celeritas", "Magneta"];

  for (final ctwzName in ctwzNames) {    
    await database.store.execute("INSERT INTO _Ctwz (name) VALUES (@name)", substitutionValues: {
      "name": ctwzName
    });
  }
  }
}
    
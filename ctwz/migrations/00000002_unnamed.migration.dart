import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
//<<<<<<< HEAD
   		database.createTable(SchemaTable("_Card", [SchemaColumn("cardnum", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("type", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("title", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("knowledge", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("area", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
//======
   		database.createTable(SchemaTable("_score", [SchemaColumn("userid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("score1fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score1var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score2fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score2var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score3fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score3var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score4fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score4var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score5fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score5var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score6fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score6var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
		database.createTable(SchemaTable("_status", [SchemaColumn("cardid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("learnstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("favorstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
//>>>>>>> changqing
  }
  
  @override
  Future downgrade() async {}
  
//<<<<<<< HEAD
  @override
  Future seed() async {
  final cardTitles = ["什么是白带", "什么是白带常规", "什么样的月经是正常的", "如何推迟月经", "宫颈病变"];

  for (final cardTitle in cardTitles) {    
    await database.store.execute("INSERT INTO _Card (title) VALUES (@title)", substitutionValues: {
      "cardTitle": cardTitle
    });
  }
/*}

    
//=======

  @override
  Future seed() async {*/
    final score1fixed = ["",""];
    final score2fixed = ["",""];

      for (final score1fixed in score1fixed) {    
        await database.store.execute("INSERT INTO _score (score1fixed) VALUES (@score1fixed)", substitutionValues: {
        "score1fixed": score1fixed
      });
    }
      for (final score2fixed in score2fixed) {    
        await database.store.execute("INSERT INTO _score (score2fixed) VALUES (@score2fixed)", substitutionValues: {
        "score2fixed": score2fixed
      });
    }//还缺10个score和status
  }
}
//>>>>>>> changqing

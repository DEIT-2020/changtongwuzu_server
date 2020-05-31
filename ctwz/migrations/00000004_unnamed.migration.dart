import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration4 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_score", [SchemaColumn("userid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("score1fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score1var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score2fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score2var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score3fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score3var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score4fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score4var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score5fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score5var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score6fixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("score6var", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
		database.createTable(SchemaTable("_status", [SchemaColumn("cardid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("learnstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("favorstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    /*
    final score1fixed = [""];
    final score1var = [""];
    final score2fixed = [""];
    final score2var = [""];
    final score3fixed = [""];
    final score3var = [""];
    final score4fixed = [""];
    final score4var = [""];
    final score5fixed = [""];
    final score5var = [""];
    final score6fixed = [""];
    final score6var = [""];


      for (final score1fixed in score1fixed) {    
        await database.store.execute("INSERT INTO _score (score1fixed) VALUES (@score1fixed)", substitutionValues: {
        "score1fixed": score1fixed
      });
    }
      for (final score2fixed in score2fixed) {    
        await database.store.execute("INSERT INTO _score (score2fixed) VALUES (@score2fixed)", substitutionValues: {
        "score2fixed": score2fixed
      });
    }
      for (final score3fixed in score3fixed) {    
        await database.store.execute("INSERT INTO _score (score3fixed) VALUES (@score3fixed)", substitutionValues: {
        "score3fixed": score3fixed
      });
    }
      for (final score4fixed in score4fixed) {    
        await database.store.execute("INSERT INTO _score (score4fixed) VALUES (@score4fixed)", substitutionValues: {
        "score4fixed": score4fixed
      });
    }
      for (final score5fixed in score5fixed) {    
        await database.store.execute("INSERT INTO _score (score5fixed) VALUES (@score5fixed)", substitutionValues: {
        "score5fixed": score5fixed
      });
    }
      for (final score6fixed in score6fixed) {    
        await database.store.execute("INSERT INTO _score (score6fixed) VALUES (@score6fixed)", substitutionValues: {
        "score6fixed": score6fixed
      });
    }
    */
    //还缺status
  }
}
    
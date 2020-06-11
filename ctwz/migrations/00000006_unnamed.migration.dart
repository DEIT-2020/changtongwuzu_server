import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
		database.createTable(SchemaTable("_Card", [SchemaColumn("cardnum", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("type", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("title", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("knowledge", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("area", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false)]));
		database.createTable(SchemaTable("_Score", [SchemaColumn("userid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("whitesfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("whitesvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("periodfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("periodvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("inflammationfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("inflammationvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("diseasesfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("diseasesvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("protectionfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("protectionvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("othersfixed", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("othersvar", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("total", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false)]));
		database.createTable(SchemaTable("_Status", [SchemaColumn("countnumber", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("userid", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("cardnum", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: true, isUnique: false),SchemaColumn("learnstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("favorstatus", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false)]));
		database.createTable(SchemaTable("_Test", [SchemaColumn("userid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("testtime", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("testquestions", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("testresult", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("testscore", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false)]));
 }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    //card种子
     final cardTypes =["知识点","注意点","应对方法"];
     final cardTitles=["痛经的分类","月经期间不能吃冰的？","原发性痛经的缓解方法"];
     final cardAreas =["月经","月经","月经"];
      for (final cardType in cardTypes) {    
        await database.store.execute("INSERT INTO _card (type) VALUES (@type)", substitutionValues: {
          "type": cardType
        });
      }
      for (final cardTitle in cardTitles) {    
        await database.store.execute("INSERT INTO _card (title) VALUES (@title)", substitutionValues: {
          "title": cardTitle
        });
      }
      for (final cardArea in cardAreas) {    
        await database.store.execute("INSERT INTO _card (area) VALUES (@area)", substitutionValues: {
          "area": cardArea
        });
      }
    //score种子
    final userIDs=["100001","100002"];
    for (final userID in userIDs) {    
        await database.store.execute("INSERT INTO _score (userid) VALUES (@userid)", substitutionValues: {
          "userid": userID
        });
      }
    //status种子
     final userIds=["100001","100002"];
     final cardnums=["00001","00002"];
    for (final userId in userIds) {    
        await database.store.execute("INSERT INTO _status (userid) VALUES (@userid)", substitutionValues: {
          "userid": userId
        });
      }
    for (final cardnum in cardnums) {    
        await database.store.execute("INSERT INTO _status (cardnum) VALUES (@cardnum)", substitutionValues: {
          "cardnum": cardnum
        });
      }
  }
}
    
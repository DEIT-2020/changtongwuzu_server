import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration7 extends Migration { 
  @override
  Future upgrade() async {
   	database.createTable(SchemaTable("_Question", [SchemaColumn("qid", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("testquestion", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("optionA", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("optionB", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("optionC", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),SchemaColumn("key", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false)]));
		database.alterColumn("_Score", "total", (c) {c.isIndexed = true;});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final testquestions=["slihfi?","alfjijgirejgpqjefoqkwdqokfpiewjgorhopwokrpgwijeoig?"];
    final optionAs=["A.qrq3r","A.sefjowi"];
    final optionBs=["B.grergerg","B.qryjyu"];
    final optionCs=["C.rhyrth","C.,.kjhg"];
    final keys=["C","A"];
    
  for (final testquestion in testquestions) {    
    await database.store.execute("INSERT INTO _Question (testquestion) VALUES (@testquestion)", substitutionValues: {
      "testquestion": testquestion
    });
  }

  for (final optionA in optionAs) {    
    await database.store.execute("INSERT INTO _Question (optionA) VALUES (@optionA)", substitutionValues: {
      "optionA": optionA
    });
  }
  for (final optionB in optionBs) {    
    await database.store.execute("INSERT INTO _Question (optionB) VALUES (@optionB)", substitutionValues: {
      "optionB": optionB
    });
  }
  for (final optionC in optionCs) {    
    await database.store.execute("INSERT INTO _Question (optionC) VALUES (@optionC)", substitutionValues: {
      "optionC": optionC
    });
  } 
  for (final key in keys) {    
    await database.store.execute("INSERT INTO _Question (key) VALUES (@key)", substitutionValues: {
      "key": key
    });
  } 






  }
}
    
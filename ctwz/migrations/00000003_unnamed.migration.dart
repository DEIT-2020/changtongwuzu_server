import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration3 extends Migration { 
  @override
  Future upgrade() async {
   		database.alterColumn("_Card", "title", (c) {c.isIndexed = true;c.isUnique = false;});
		database.alterColumn("_Card", "knowledge", (c) {c.isUnique = false;});
		database.alterColumn("_Card", "area", (c) {c.isIndexed = true;c.isUnique = false;});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    
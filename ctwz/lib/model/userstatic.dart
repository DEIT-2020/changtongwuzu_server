import "package:ctwz/ctwz.dart";
class UserStatic extends ManagedObject<_UserStatic> implements _UserStatic {}

class _UserStatic {
  @primaryKey
  int id;//用户id

  @Column(unique: true)
  String gender ;//卡片类型（知识/注意点/应对方法）

}
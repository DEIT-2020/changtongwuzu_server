import "package:ctwz/ctwz.dart";
class UserStatic extends ManagedObject<_UserStatic> implements _UserStatic {}

class _UserStatic {
  @primaryKey
  int id;//用户id

  @Column(unique: true)
  String gender ;//性别

  @Column(unique:true)
  int height;//身高

  @Column(unique:true)
  int weight;//体重

  @Column(unique:true)
  String preference;//兴趣偏好

}
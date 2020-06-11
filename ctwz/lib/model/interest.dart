import "package:ctwz/ctwz.dart";

class Interest extends ManagedObject<_Interest> implements _Interest {}

class _Interest {
  @primaryKey
  int userid;

  @Column(nullable: true)
  String islikewhites;

  @Column(nullable: true)
  String islikeperiod;

  @Column(nullable: true)
  String islikeiflammation;

  @Column(nullable: true)
  String islikediseases;

  @Column(nullable: true)
  String islikeprotection;

  @Column(nullable: true)
  String islikeothers;
}
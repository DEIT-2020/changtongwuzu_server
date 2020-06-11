import 'package:ctwz/ctwz.dart';

class Status extends ManagedObject<_Status> implements _Status  {}


class _Status  {
@primaryKey
  int countnumber;//记录编号

  @Column(nullable: true,indexed: true)
  int userid;//用户id

  @Column(nullable: true,indexed: true)
  String cardnum;//卡片编号

  @Column(nullable: true)
  String learnstatus;//学习状态(unlearned learned mastered)

  @Column(nullable: true)
  String favorstatus;//收藏状态(y/n)
}
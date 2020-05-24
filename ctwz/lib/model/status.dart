import 'package:ctwz/ctwz.dart';

class Status extends ManagedObject<_status> implements _status  {}


class _status  {
@primaryKey
  int cardid;//卡片编码

  @Column(unique: true)
  String learnstatus;//学习状态(unlearned learned mastered)

  @Column(unique: true)
  String favorstatus;//收藏状态(y/n)
}
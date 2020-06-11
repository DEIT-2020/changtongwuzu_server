import "package:ctwz/ctwz.dart";
class Card extends ManagedObject<_Card> implements _Card {}

class _Card {
  @primaryKey
  int cardnum;//卡片编号

  @Column(nullable: true,indexed: true)
  String type;//卡片类型（知识/注意点/应对方法）

  @Column(nullable: true,indexed: true)
  String title;//卡片正面标题
  
  @Column(nullable: true,indexed: true)
  String knowledge;//卡片背面知识

  @Column(nullable:true,indexed: true)
  String area;//卡片分区
}
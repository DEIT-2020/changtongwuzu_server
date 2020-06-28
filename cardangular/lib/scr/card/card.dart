class Card{
  final int cardnum;
   String type;//卡片类型（知识/注意点/应对方法）
   String title;//卡片正面标题
   String knowledge;//卡片背面知识
   String area;//卡片分区

   Card(this.cardnum,this.type,this.title,this.knowledge);

   factory Card.fromJson(Map<String, dynamic> card) =>
      Card(_toInt(card['cardnum']), card['type'],card['title'],card['knowledge']);

  Map toJson() => {'cardnnum': cardnum, 'type': type,'title':title,'knowledge':knowledge};
}

int _toInt(cardnum) => cardnum is int ? cardnum: int.parse(cardnum);

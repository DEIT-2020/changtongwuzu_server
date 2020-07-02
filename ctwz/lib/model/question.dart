import 'package:ctwz/ctwz.dart';

class Question extends ManagedObject<_Question> implements _Question  {}


class _Question  {
@primaryKey
  int qid;//题号ID

  @Column(nullable: true)
  String testquestion;//考题内容

  @Column(nullable: true)
  String optionA;

  @Column(nullable: true)
   String optionB;

  @Column(nullable: true)
    String optionC;

  @Column(nullable: true)
    String key;
}
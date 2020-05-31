import 'package:ctwz/ctwz.dart';

class Test extends ManagedObject<_test> implements _test  {}


class _test  {
@primaryKey
  int userid;//用户ID

  @Column(unique: true)
  String testtime;//考试时间

  @Column(unique: true)
  String testquestions;//考试题目

  @Column(unique: true)
  String testresult;//考试结果

  @Column(unique: true)
  String testscore;//考试成绩
}
import 'package:ctwz/ctwz.dart';

class Score extends ManagedObject<_score> implements _score {}


class _score {
@primaryKey
int userid;

@Column(unique: true)
String score1fixed;

@Column(unique: true)
String score1var;

@Column(unique: true)
String score2fixed;

@Column(unique: true)
String score2var;

@Column(unique: true)
String score3fixed;

@Column(unique: true)
String score3var;

@Column(unique: true)
String score4fixed;

@Column(unique: true)
String score4var;

@Column(unique: true)
String score5fixed;

@Column(unique: true)
String score5var;

@Column(unique: true)
String score6fixed;

@Column(unique: true)
String score6var;

}
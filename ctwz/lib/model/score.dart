import 'package:ctwz/ctwz.dart';

//<<<<<<< HEAD
class Score extends ManagedObject<_Score> implements _Score {}


class _Score {
@primaryKey
int userid;

@Column(nullable: true)
String whitesfixed;

@Column(nullable: true)
String whitesvar;

@Column(nullable: true)
String periodfixed;

@Column(nullable: true)
String periodvar;

@Column(nullable: true)
String inflammationfixed;

@Column(nullable: true)
String inflammationvar;

@Column(nullable: true)
String diseasesfixed;

@Column(nullable: true)
String diseasesvar;

@Column(nullable: true)
String protectionfixed;

@Column(nullable: true)
String protectionvar;

@Column(nullable: true)
String othersfixed;

@Column(nullable: true)
String othersvar;

@Column(nullable: true)
String total;
/*=======
class Score extends ManagedObject<_score> implements _score  {}


class _score  {
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
>>>>>>> changqing*/

}
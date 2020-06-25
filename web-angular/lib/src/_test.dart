class Test{
  final int id;
  String testquestions;
  String A;
  String B;
  String C;

  Test(this.id,this.testquestions,this.A,this.B,this.C);
/*
  factory Test.fromJson(Map<String,dynamic,dynamic,dynamic,dynamic> test)=>
    Test(_toInt(test['id']),test['testquestions'],test['A'],test['B'],test['C']);

  Map toJson()=>{'id':id,'testquestions':testquestions,'A':A,'B':B,'C':C};
}
int _toInt(id) => id is int ? id : int.parse(id);*/
}
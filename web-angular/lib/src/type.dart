class Type{
  String name;
  static int _nextId = 1;
  final int id;
  int all ;
  int already;
  int remain;

  Type(this.name, this.all, this.already, this.remain) : id = _nextId++ ;
}
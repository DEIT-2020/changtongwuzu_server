class User {
  int id;
  String name;
  String gender;
  String alterPassword;
  User(this.id, this.name, this.gender, [this.alterPassword]);
  String toString() => '$id: $name ($alterPassword). Super gender: $gender';
}
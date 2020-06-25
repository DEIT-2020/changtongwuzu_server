import '_test.dart';
import 'mock_tests.dart';

class TestService{
  List<Test>getAll()=>mockTests;
  Future<List<Test>> gestAllSlowly(){
    return Future.delayed(Duration(seconds:2),getAll);
  }
  Future<Test>get(int id)async =>
    (await getAll()).firstWhere((test)=>test.id==id);
}
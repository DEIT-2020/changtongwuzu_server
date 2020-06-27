import 'package:angular_router/angular_router.dart';
const idParam = 'id';
class RoutePaths {
  static final teststart = RoutePath(path: 'teststart');
  static final test = RoutePath(path: 'test');
}
int getId(Map<String,String>parameters){
  final id=parameters[idParam];
  return id == null?null : int.tryParse(id);
}
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';

class LoginsController extends ResourceController {
  final _logins = [
    {'id': 11, '你好': '登陆成功'},
   
  ];

  @Operation.get()
  Future<Response> getAlllogins() async {
    return Response.ok(_logins);
  }

  @Operation.get('id')
  Future<Response> getLoginByID() async {
    final id = int.parse(request.path.variables['id']);
    final login = _logins.firstWhere((login) => login['id'] == id, orElse: () => null);
    if (login == null) {
      return Response.notFound();
    }

    return Response.ok(_logins);
  }
}
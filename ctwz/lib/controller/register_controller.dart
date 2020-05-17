import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';

class RegistersController extends ResourceController {
  final _registers = [
    {'id': 11, '你好': '注册成功'},
    
  ];

  @Operation.get()
  Future<Response> getAllregisters() async {
    return Response.ok(_registers);
  }

  @Operation.get('id')
  Future<Response> getRegisterByID() async {
    final id = int.parse(request.path.variables['id']);
    final register = _registers.firstWhere((register) => register['id'] == id, orElse: () => null);
    if (register == null) {
      return Response.notFound();
    }

    return Response.ok(_registers);
  }
//@Operation.post

}
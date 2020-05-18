import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';



class UserinfosController extends ResourceController {
  final _userinfos = [
    {'id': 11, '身高': '体重'},
  ];

  @Operation.get()
  Future<Response> getAllUserinfos() async {
    return Response.ok(_userinfos);
  }

  @Operation.get('id')
  Future<Response> getUserinfoByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final userinfo = _userinfos.firstWhere((userinfo) => userinfo['id'] == id, orElse: () => null);
    if (userinfo == null) {
      return Response.notFound();
    }

    return Response.ok(userinfo);
  }

/*
@Operation.put()
Future<Response> updateAllUserinfos() async {

}
@Operation.post()
Future<Response> createAllUserinfos() async {

}
*/

}

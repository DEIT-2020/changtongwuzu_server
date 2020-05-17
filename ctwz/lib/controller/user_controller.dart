
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class UsersinfoController extends ResourceController {
  final _users = [
    {'id': 11, 'name': 'Mr. Nice'},
    {'id': 12, 'name': 'Narco'},
    {'id': 13, 'name': 'Bombasto'},
    {'id': 14, 'name': 'Celeritas'},
    {'id': 15, 'name': 'Magneta'},
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_users);
  }
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_users);
  }

  @Operation.get('id')
  Future<Response> getUsersByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _users.firstWhere((hero) => hero['id'] == id, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }

 
}
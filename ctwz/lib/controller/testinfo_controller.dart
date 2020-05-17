
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class TestinfoController extends ResourceController {
  final _tests= [
    {'id': 11, 'name': 'Mr. Nice'},
    {'id': 12, 'name': 'Narco'},
    {'id': 13, 'name': 'Bombasto'},
    {'id': 14, 'name': 'Celeritas'},
    {'id': 15, 'name': 'Magneta'},
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_tests);
  }
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_tests);
  }

  @Operation.get('id')
  Future<Response> getUsersByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _tests.firstWhere((hero) => hero['id'] == id, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }

//@Operation.post
//@Operation.del
}
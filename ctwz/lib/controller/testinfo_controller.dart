
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
  Future<Response> getAllTests() async {

    return Response.ok(_tests);
  }

  @Operation.get('id')
  Future<Response> getTestsByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final test = _tests.firstWhere((test) => test['id'] == id, orElse: () => null);
    if (test == null) {
      return Response.notFound();
    }

    return Response.ok(test);
  }

/*
@Operation.post()
Future<Response> createAllTests() async {

}
*/
//@Operation.del
}
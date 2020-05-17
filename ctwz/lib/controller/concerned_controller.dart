import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';



class ConcernedsController extends ResourceController {
  final _concerneds = [
    {'id': 11, '乳腺癌': '更年期'},
  ];

  @Operation.get()
  Future<Response> getAllConcerneds() async {
    return Response.ok(_concerneds);
  }

  @Operation.get('id')
  Future<Response> getConcernedByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final concerned = _concerneds.firstWhere((concerned) => concerned['id'] == id, orElse: () => null);
    if (concerned == null) {
      return Response.notFound();
    }

    return Response.ok(concerned);
  }
}
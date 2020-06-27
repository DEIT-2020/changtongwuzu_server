import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/allpass.dart';

class CtwzController extends ResourceController {

  CtwzController(this.context);

  final ManagedContext context; 

  /*final _ctwz = [
    {'id': 11, 'name': 'Mr. Nice'},
    {'id': 12, 'name': 'Narco'},
    {'id': 13, 'name': 'Bombasto'},
    {'id': 14, 'name': 'Celeritas'},
    {'id': 15, 'name': 'Magneta'},    
  ];*/

  @Operation.get()
  Future<Response> getAllctwz({@Bind.query('name') String name}) async {

    final ctwzQuery = Query<Ctwz>(context);
    if (name != null) {
      ctwzQuery.where((h) => h.name).contains(name, caseSensitive: false);
    }
    final ctwz = await ctwzQuery.fetch();

    return Response.ok(ctwz);
  }

  @Operation.get('id')
  Future<Response> getctwzByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    //final ctwz = _ctwz.firstWhere((ctwz) => ctwz['id'] == id, orElse: () => null);
    final ctwzQuery = Query<Ctwz>(context)
    ..where((h) => h.id).equalTo(id); 
    final ctwz = await ctwzQuery.fetchOne();

    if (ctwz == null) {
      return Response.notFound();
    }

    return Response.ok(ctwz);
  }
@Operation.post()
Future<Response> createCtwz() async {
  final ctwz = Ctwz()
    ..read(await request.body.decode(), ignore: ["id"]);
  final query = Query<Ctwz>(context)..values = ctwz;


  final insertedCtwz = await query.insert();

  return Response.ok(insertedCtwz);
}


/*

  @override
  Future<RequestOrResponse> handle(Request request) async {
    if (request.path.variables.containsKey('id')) {
    final id = int.parse(request.path.variables['id']);
    final ctwz = _ctwz.firstWhere((ctwz) => ctwz['id'] == id, orElse: () => null);
    if (ctwz == null) {
      return Response.notFound();
    }

    return Response.ok(ctwz);
  }
    return Response.ok(_ctwz);
  }*/
}
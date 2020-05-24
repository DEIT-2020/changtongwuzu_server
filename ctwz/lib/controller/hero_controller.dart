import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/allpass.dart';

class HeroesController extends ResourceController {

  HeroesController(this.context);

  final ManagedContext context; 

/*
  @Operation.get()
  Future<Response> getAllheroes({@Bind.query('name') String name}) async {

    final heroQuery = Query<hero>(context);
    if (name != null) {
      heroQuery.where((h) => h.name).contains(name, caseSensitive: false);
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
*/

}
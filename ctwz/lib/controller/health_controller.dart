import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';



class HealthsController extends ResourceController {
  final _healths = [
    {'id': 11, '痛经': '九价Hpv'},
  ];

  @Operation.get()
  Future<Response> getAllHealths() async {
    return Response.ok(_healths);
  }

  @Operation.get('id')
  Future<Response> getHealthsByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final health = _healths.firstWhere((health) => health['id'] == id, orElse: () => null);
    if (health == null) {
      return Response.notFound();
    }

    return Response.ok(health);
  }
//@Operation.put
//@Operation.post
}
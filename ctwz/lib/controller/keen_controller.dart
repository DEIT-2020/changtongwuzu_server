
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class KeenController extends ResourceController {
  final _keen= [{'cardnum':20198,'title':'keencontroller',} ];


  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_keen);
  }
  
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_keen);
  }

  @Operation.get('cardnum')
  Future<Response> getCardsByID(@Bind.path('cardnum') int cardnum) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _keen.firstWhere((hero) => hero['cardnum'] == cardnum, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }
//@Operation.put
}
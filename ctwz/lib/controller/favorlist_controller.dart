import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class FavorlistController extends ResourceController {
  final _favorlist= [{'cardnum':20198,'title':'favorlist',} ];


  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_favorlist);
  }
  
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_favorlist);
  }

  @Operation.get('cardnum')
  Future<Response> getCardsByID(@Bind.path('cardnum') int cardnum) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _favorlist.firstWhere((hero) => hero['cardnum'] == cardnum, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }
//@Operation.put
}
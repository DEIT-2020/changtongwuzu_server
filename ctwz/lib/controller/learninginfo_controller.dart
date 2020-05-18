
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class LearninginfoController extends ResourceController {
  final _cardsinfo= [
    {'cardnum': 11, 'status': 'learned'},
    {'cardnum': 12, 'status': 'mastered'},
    {'cardnum': 13, 'status': 'none'},
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_cardsinfo);
  }
  @Operation.get()
  Future<Response> getAllUsers() async {

    return Response.ok(_cardsinfo);
  }

  @Operation.get('id')
  Future<Response> getUsersByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _cardsinfo.firstWhere((hero) => hero['id'] == id, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }

/*
@Operation.put()
Future<Response> updateAllKeens() async {

}*/

}
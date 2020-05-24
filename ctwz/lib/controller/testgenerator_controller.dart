
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class TestgeneratorController extends ResourceController {
  final _testgenerater= [{'cardnum':20198,'sort':'testgeneratecontroller',} ];


  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_testgenerater);
  }
  
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_testgenerater);
  }

  @Operation.get('cardnum')
  Future<Response> getCardsByID(@Bind.path('cardnum') int cardnum) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _testgenerater.firstWhere((hero) => hero['cardnum'] == cardnum, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }


}
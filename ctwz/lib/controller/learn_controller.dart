
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';


class LearnController extends ResourceController {
  final _cards= [{'cardnum':20198,'sort':'A','subject':1,'title':'痛经的分类','knowledge':'痛经分为继发性痛经和原发性痛经'} ];


  @override
  Future<RequestOrResponse> handle(Request request) async {

    return Response.ok(_cards);
  }
  
  @Operation.get()
  Future<Response> getAllHeroes() async {

    return Response.ok(_cards);
  }

  @Operation.get('cardnum')
  Future<Response> getCardsByID(@Bind.path('cardnum') int cardnum) async {
    //final id = int.parse(request.path.variables['id']);
    final hero = _cards.firstWhere((hero) => hero['cardnum'] == cardnum, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }

}
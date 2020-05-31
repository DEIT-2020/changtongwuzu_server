
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/allpass.dart';
import 'package:ctwz/model/card.dart';
import 'package:ctwz/model/score.dart';

class LearnController extends ResourceController {
  LearnController(this.context);
  final ManagedContext context;


  @Operation.get()
  Future<Response> getUsercards() async {
  final heroQuery = Query<Card>(context);
  final cards = await heroQuery.fetch();

    return Response.ok(cards);
  }

  @Operation.get('num')
  Future<Response> getAllcards({@Bind.query('num') int num}) async {
    final cardQuery = Query<Card>(context)
    ..where((h) => h.cardnum).equalTo(num);
    if (num != null) {
      return Response.notFound();
    }
    final cards = await cardQuery.fetch();

    return Response.ok(cards);
  }
  
@Operation.get()//用户综合分数
  Future<Response> getUserscores() async {
    final scoreQuery = Query<Score>(context);
    final score = await scoreQuery.fetch();
    return Response.ok(score);
  }

  @Operation.get('id')//用户综合分数
  Future<Response> getUserscoresByID(@Bind.path('id') int id) async {
    //final id = int.parse(request.path.variables['id']);
   // final userinfo = Score.firstWhere((score) => score['id'] == id, orElse: () => null);
    final scoreQuery = Query<Score>(context)
    ..where((h) => h.userid).equalTo(id);    

  final score = await scoreQuery.fetchOne();
    if (Score == null) {
      return Response.notFound();
    }

    return Response.ok(score);
  }
}


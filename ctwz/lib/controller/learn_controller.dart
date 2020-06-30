import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/allpass.dart';
import 'package:ctwz/model/card.dart';
import 'package:ctwz/model/score.dart';

class LearnController extends ResourceController {
  LearnController(this.context);
  final ManagedContext context;
     
  @Operation.get()//get所有卡片信息
  Future<Response> getUsercards() async {
  final cardsQuery = Query<Card>(context);
  final List<Card>cards = await cardsQuery.fetch();
  /*final cd=List<dynamic>(10);
    for(var i=0;i<10;i++){
      if(cards.length==0)break;
      var random=Random();
      var ran =random.nextInt(cards.length);
    }*/
    return Response.ok(cards);
  }

/*@Operation.get('id')//用户综合分数
  Future<Response> getUserscoresByID(@Bind.path('id') int userid) async {
    //final id = int.parse(request.path.variables['id']);
   // final userinfo = Score.firstWhere((score) => score['id'] == id, orElse: () => null);
    final scoreQuery = Query<Score>(context)
    ..where((h) => h.userid).equalTo(userid);    

  final score = await scoreQuery.fetchOne();
    if (Score == null) {
      return Response.notFound();
    }

    return Response.ok(score);
  }
*/
  @Operation.get('cardnum')
  Future<Response> getUsercardsByNum({@Bind.query('cardnum') int cardnum}) async {
    final cardQuery = Query<Card>(context)
    ..where((h) => h.cardnum).equalTo(cardnum);
   final cards = await cardQuery.fetch();

    if (cardnum != null) {
          return Response.notFound();
        }
    return Response.ok(cards);
  }
  
 /*@Operation.get()//用户综合分数
  Future<Response> getUserscores() async {
    final scoreQuery = Query<Score>(context);
    final score = await scoreQuery.fetch();
    return Response.ok(score);
  }*/

  
}


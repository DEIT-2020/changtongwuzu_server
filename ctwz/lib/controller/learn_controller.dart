
import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/allpass.dart';
import 'package:ctwz/model/card.dart';
import 'package:ctwz/model/score.dart';

class LearnController extends ResourceController {
  LearnController(this.context);
  final ManagedContext context;


  @override
  Future<RequestOrResponse> handle(Request request) async {
  final heroQuery = Query<Card>(context);
  final cards = await heroQuery.fetch();

    return Response.ok(cards);
  }

  @Operation.get()
  Future<Response> getAllcards({@Bind.query('title') String title}) async {
    final heroQuery = Query<Card>(context);
    if (title != null) {
      heroQuery.where((h) => h.title).contains(title, caseSensitive: false);
    }
    final cards = await heroQuery.fetch();

    return Response.ok(cards);
  }
  
 @Operation.get('id')
Future<Response> getScoreByID(@Bind.path('id') int id) async {
  final heroQuery = Query<Score>(context)
    ..where((h) => h.userid).equalTo(id);    

  final score = await heroQuery.fetchOne();

  return Response.ok(score);
}
}


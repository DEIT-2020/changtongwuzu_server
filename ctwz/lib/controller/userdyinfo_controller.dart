

import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/score.dart';
import 'package:ctwz/model/status.dart';
import 'package:ctwz/model/test.dart';


class UserDyinfoController extends ResourceController {

  UserDyinfoController(this.context);

  final ManagedContext context;

 /* final _userinfos = [
    {'id':1, '用户综合分数': 90, '用户卡片掌握状态': '15%'},
  ];
*/
  @Operation.get()//用户综合分数
  Future<Response> getUserscores() async {
    final scoreQuery = Query<Score>(context);
    final score = await scoreQuery.fetch();
    return Response.ok(score);
  }

  @Operation.get('userid')//用户综合分数
  Future<Response> getUserscoresByID(@Bind.path('userid') int userid) async {
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

  /*@Operation.get()//用户卡片掌握状态
  Future<Response> getUsercardstatus() async {
    final statusQuery = Query<Status>(context);
    final status = await statusQuery.fetch();
    return Response.ok(status);
  }
  
@Operation.get('userid')//用户卡片掌握状态
  Future<Response> getUsercardstatusByID(@Bind.path('userid') int userid) async {
    final statusQuery = Query<Status>(context)
    ..where((h) => h.userid).equalTo(userid);    

  final status = await statusQuery.fetchOne();
    if (Status == null) {
      return Response.notFound();
    }

    return Response.ok(status);
  }


@Operation.put('userid')//各专题综合分数
Future<Response> updateAllUserScores(@Bind.path('userid') int userid, @Bind.body() Score score) async {
    final scorequery = Query<Score>(context)
      ..where((a)=>a.userid).equalTo(userid)
      ..values = score;
  return Response.ok(await scorequery.updateOne());
}


@Operation.put('userid')//各专题卡片掌握状态
Future<Response> updateAllUserStatus(@Bind.path('userid') int userid, @Bind.body() Status status) async {
    final statusquery = Query<Status>(context)
      ..where((a)=>a.userid).equalTo(userid)
      ..values = status;
  return Response.ok(await statusquery.updateOne());
}

*/

@Operation.post()//考试情况
Future<Response> addTest(@Bind.body() Test test) async {
    final insertedTest = await context.insertObject(test);

    return Response.ok(insertedTest);
}

}


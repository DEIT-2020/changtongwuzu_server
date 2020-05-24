

import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/score.dart';
import 'package:ctwz/model/status.dart';


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

  @Operation.get()//用户卡片掌握状态
  Future<Response> getUsercardstatus() async {
    final statusQuery = Query<Status>(context);
    final status = await statusQuery.fetch();
    return Response.ok(status);
  }
@Operation.get('id')//用户卡片掌握状态
  Future<Response> getUsercardstatusByID(@Bind.path('id') int id) async {
    final statusQuery = Query<Status>(context)
    ..where((h) => h.cardid).equalTo(id);    

  final status = await statusQuery.fetchOne();
    if (Status == null) {
      return Response.notFound();
    }

    return Response.ok(status);
  }



/*
@Operation.put()//各专题综合分数和卡片掌握状态
Future<Response> updateAllUserDyinfos(@Bind.path('id') int id) async {
    final query = Query<UserDyinfo>(context)
      ..values.content = UserDyinfo.content
      ..where((a)=>a.id).equalTo(value)
}

@Operation.post()//考试情况
Future<Response> createAllUserinfos() async {

}
*/

}

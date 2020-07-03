import 'package:aqueduct/aqueduct.dart';
import 'package:ctwz/ctwz.dart';
import 'package:ctwz/model/question.dart';


class QuestionController extends ResourceController {
  QuestionController(this.context);
  final ManagedContext context;
     
  @Operation.get()//get所有考试信息
  Future<Response> getUserquestions() async {
  final questionsQuery = Query<Question>(context);
  final questions = await questionsQuery.fetch();

    return Response.ok(questions);
  }


  /*@Operation.get('qid')
  Future<Response> getUserquestionsByNum({@Bind.query('testid') int testid}) async {
    final questionQuery = Query<Question>(context)
    ..where((h) => h.testid).equalTo(testid);
   final questions = await questionQuery.fetch();

    if (testid != null) {
          return Response.notFound();
        }
    return Response.ok(questions);
  }
  
*/
  
}
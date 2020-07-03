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


<<<<<<< HEAD
  /*@Operation.get('qid')
  Future<Response> getUserquestionsByNum({@Bind.query('testid') int testid}) async {
=======



  @Operation.get('qid')
/*>>>>>>> eea4de4bbb5c7999447dfeb218c046b1b68a2f3b */
  Future<Response> getUserquestionsByNum({@Bind.query('qid') int qid}) async {
>>>>>>> changqing
    final questionQuery = Query<Question>(context)
    ..where((h) => h.qid).equalTo(qid);
   final questions = await questionQuery.fetch();

    if (qid != null) {
          return Response.notFound();
        }
    return Response.ok(questions);
  }
<<<<<<< HEAD
  
*/
=======

 

>>>>>>> changqing
  
}
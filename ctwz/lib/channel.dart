import 'ctwz.dart';
import 'controller/ctwz_controller.dart';
import 'controller/user_controller.dart';
import 'controller/learn_controller.dart';
import 'controller/testinfo_controller.dart';
import 'controller/learninginfo_controller.dart';
import 'controller/keen_controller.dart';
import 'controller/favorlist_controller.dart';
import 'controller/testgenerate_controller.dart';
import 'controller/register_controller.dart';
import 'controller/login_controller.dart';
import 'controller/health_controller.dart';
import 'controller/userinfo_controller.dart';
import 'controller/concerned_controller.dart';
//import 'controller/changtongwuzu_controller.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class CtwzChannel extends ApplicationChannel {

  ManagedContext context;

  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));

    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
        final persistentStore = PostgreSQLPersistentStore.fromConnectionInfo(
      "heroes_user", "password", "localhost", 5432, "heroes");

      context = ManagedContext(dataModel, persistentStore);
  }
  

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    
    router
    .route('/heroes/[:id]')
    .link(() => CtwzController(context));

    router
    .route('/registers/[:id]')//注册
    .link(() => RegistersController());//注册信息（生成用户编号、账号密码传递给数据库）

    router
   .route('/member/[:id]')//登录
   .link(() => LoginsController());//登录信息（登录后data传给usercontroller）+用户编号

   router
   .route('/user/[:id]')//用户信息
   .link(() => UserinfosController());//账户信息

   router
   .route('/user/health/[:id]')//用户信息
   .link(() => HealthsController());//个人健康信息（影响卡片学习）

   router
   .route('/user/concern/[:id]')//用户信息
   .link(() => ConcernedsController());//用户关心的关键词(对应一类卡片，例如提高优先级）
    
    
    //个人中心:
    router
    .route('/home/learninginfo1/[:id]')
    .link(() => LearnController());//读取卡片编号+类别编号+分区编号+正面标题+反面知识 

    router
    .route('/home/learninginfo2/[:id]')
    .link(() => LearninginfoController());//读取卡片的掌握情况（某张卡片是否学习/掌握）

    router
    .route('/home/testinfo/[:id]')
    .link(() => TestinfoController());//读取、删除考试情况（包括考题、错题、考试时间）

    router
    .route('/home/favorlist1/[:id]')
    .link(() => LearnController());//读取卡片分区及详细信息

     router
    .route('/home/favorlist2/[:id]')   
    .link(() => LearninginfoController());//读取卡片的掌握情况（某张卡片是否学习/掌握）

    router
    .route('/home/favorlist3/[:id]')
    .link(() => FavorlistController());//读取、删除收藏夹卡片（收藏知识）

     router
    .route('/home/favorlist4/[:id]') 
    .link(() => KeenController());//更新分区兴趣分数+用户login编号
   
    //学习专区
    router
    .route('/learn1/[:id]')
    .link(() => KeenController());//读取分区兴趣分数+用户login编号
    
    router
    .route('/learn2/[:id]')
    .link(() => LearnController()); //根据分数推荐卡片

    router
    .route('/learn3/[:id]')
    .link(() => FavorlistController());//更新收藏夹（收藏知识）

    router
    .route('/learn4/[:id]')
    .link(() => KeenController());//更新分区兴趣分数+用户login编号
    
    //测试区
    router
    .route('/test1/[:id]')
    .link(() => LearninginfoController());//读取用户卡片的掌握情况（某张卡片是否学习/掌握）

    router
    .route('/test2/[:id]')
    .link(() => TestgeneraterController());//自动生成试卷

    router
    .route('/test3/[:id]')
    .link(() => TestinfoController());//新增考试情况（包括考题、错题、考试时间）

    router
    .route('/test4/[:id]')
    .link(() => LearninginfoController());//更新卡片的掌握情况（某张卡片是否学习/掌握）

    router
    .route('/test5/[:id]')
    .link(() => KeenController());//更新分区兴趣分数+用户login编号
    

   /* router
    .route('/changtongwuzu/[:id]')
    .link(() => changtongwuzuController(context));
*/
    router
      .route("/example")
      .linkFunction((request) async {
        return Response.ok({"key": "value"});
      });

    return router;
  }
}
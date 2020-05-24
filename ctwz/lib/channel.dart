import 'ctwz.dart';
import 'controller/ctwz_controller.dart';
import 'controller/user_controller.dart';
import 'controller/learn_controller.dart';
import 'controller/login_controller.dart';
import 'controller/register_controller.dart';
import 'controller/userdyinfo_controller.dart';
import 'controller/userstinfo_controller.dart';
import 'controller/validate_controller.dart';
import 'controller/testgenerator_controller.dart';
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
    .route('/registers/[:id]')//注册
    .link(() => RegistersController());//注册信息（生成用户编号、账号密码传递给数据库）

    router
   .route('/member/[:id]')//登录
   .link(() => LoginsController());//登录信息（登录后data传给usercontroller）+用户编号

   router
   .route('/user/[:id]')//用户个人静态信息
   .link(() => ValidateController())
   .link(() => UserStinfoController());//账户信息
    
    //学习中心:
    router
    .route('/home/learninginfo/[:id]')
    .link(() => ValidateController())
    .link(() => UserDyinfoController());

     //收藏夹
    router
    .route('/home/favorlist/[:id]')
    .link(() => ValidateController())
    .link(() => UserDyinfoController());

   
    //学习专区
    router
    .route('/learn/[:id]')
    .link(() => ValidateController())
    .link(() => LearnController(context));

    //测试区
    router
    .route('/test/[:id]')
    .link(() => ValidateController())
    .link(() => TestgeneratorController());

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

class CtwzConfig extends Configuration {
  CtwzConfig(String path): super.fromFile(File(path));

  DatabaseConfiguration database;
}
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/test_service.dart';
import 'src/score_service.dart';
import 'src/routes.dart';
import 'src/card_service.dart';
import 'src/logger_service.dart';
import 'src/backend_service.dart';
import 'src/type_service.dart';
import 'src/todo_list_service.dart';



@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  template: '''
    <center><h1>{{title}}</h1></center>
      <center><nav>
    <a [routerLink]="RoutePaths.user.toUrl()"
       [routerLinkActive]="'active'">Login</a>
    <a [routerLink]="RoutePaths.card.toUrl()"
       [routerLinkActive]="'active'">Card</a>
    <a [routerLink]="RoutePaths.teststart.toUrl()"
       [routerLinkActive]="'active'">Teststart</a>                    
    <a [routerLink]="RoutePaths.tests.toUrl()"
       [routerLinkActive]="'active'">Test</a>
    <a [routerLink]="RoutePaths.score.toUrl()"
       [routerLinkActive]="'active'">Score</a>
  </nav></center>
    <router-outlet [routes]="Routes.all"></router-outlet>
  ''',
  directives: [routerDirectives],
  providers: [ClassProvider(TestService),ClassProvider(ScoreService),ClassProvider(CardService), 
  ClassProvider(BackendService), ClassProvider(TypeService), ClassProvider(Logger),ClassProvider(TodoListService)],
  exports: [RoutePaths,Routes],

)
class AppComponent {
  final title = 'Love yourself';
}
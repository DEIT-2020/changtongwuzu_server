import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/test_service.dart';
import 'src/score_service.dart';
import 'src/routes.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
      <nav>
    <a [routerLink]="RoutePaths.tests.toUrl()"
       [routerLinkActive]="'active'">Test</a>
    <a [routerLink]="RoutePaths.teststart.toUrl()"
       [routerLinkActive]="'active'">Teststart</a>
    <a [routerLink]="RoutePaths.score.toUrl()"
       [routerLinkActive]="'active'">Score</a>
  </nav>
    <router-outlet [routes]="Routes.all"></router-outlet>
  ''',
  directives: [routerDirectives],
  providers: [ClassProvider(TestService),ClassProvider(ScoreService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  final title = 'Love yourself';
}
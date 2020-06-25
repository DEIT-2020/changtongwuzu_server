import 'package:angular/angular.dart';
import 'src/test_service.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';



// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  template: '''
    
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="RoutePaths.teststart.toUrl()"
      [routerLinkActive]="'active'">Teststart</a>
    </nav>
    <router-outlet [routes]="Routes.all"></router-outlet>
  ''',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  providers: [ClassProvider(TestService)],
  exports: [RoutePaths, Routes],
)

class AppComponent {
  final title = 'Love yourself';
  // Nothing here yet. All logic is in TodoListComponent.
}

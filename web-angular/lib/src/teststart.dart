import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'routes.dart';
//import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'teststart',
  styleUrls: ['teststart_component.css'],
  templateUrl: 'teststart_component.html',
  directives: [coreDirectives,formDirectives,routerDirectives],
  exports:[RoutePaths,Routes],
)

class TeststartComponent implements OnActivate {

  @override
  void onActivate(RouterState previous, RouterState current) {
    // TODO: implement onActivate
  }
  // Nothing here yet. All logic is in TodoListComponent.
}


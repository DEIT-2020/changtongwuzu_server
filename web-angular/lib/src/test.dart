import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'routes.dart';

@Component(
  selector: 'test',
  styleUrls: ['test_component.css'],
  templateUrl: 'test_component.html',
  directives: [coreDirectives,formDirectives,routerDirectives],
  exports:[RoutePaths,Routes],
)

class TestComponent implements OnInit {
  @override
  void ngOnInit() {
    // TODO: implement ngOnInit
  }

  // Nothing here yet. All logic is in TodoListComponent.
}
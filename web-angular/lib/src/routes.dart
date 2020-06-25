import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'teststart_component.template.dart' as teststart_template;
import 'test_component.template.dart' as test_template;
export 'route_paths.dart';

class Routes {
  static final teststart = RouteDefinition(
    routePath: RoutePaths.teststart,
    component: teststart_template.TeststartComponentNgFactory,
  );

  static final test = RouteDefinition(
    routePath: RoutePaths.test,
    component: test_template.TestComponentNgFactory,
  );
static final all = <RouteDefinition>[
    teststart,
    test,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.teststart.toUrl(),
    ),
  ];
}
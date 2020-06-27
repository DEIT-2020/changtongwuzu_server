import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'test_component.template.dart' as test_template;
import 'teststart_component.template.dart' as teststart_template;
import 'score_component.template.dart' as score_template;
export 'route_paths.dart';

class Routes {
  static final tests = RouteDefinition(
    routePath: RoutePaths.tests,
    component: test_template.TestComponentNgFactory,
  );
  static final teststart = RouteDefinition(
    routePath: RoutePaths.teststart,
    component: teststart_template.TeststartComponentNgFactory,
);
  static final score = RouteDefinition(
    routePath: RoutePaths.score,
    component: score_template.ScoreComponentNgFactory,
);

  static final all = <RouteDefinition>[
    tests,
    teststart,
    score,
    RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.teststart.toUrl(),
  ),
  ];
}
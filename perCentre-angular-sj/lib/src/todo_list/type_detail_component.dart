//import 'package:SJ/src/todo_list/type.dart' as prefix0;
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'type.dart';

@Component(
  selector:'type-detail',
  templateUrl:'type_detail_component.html',
  directives:[coreDirectives, formDirectives],
)
class TypeDetailComponent{
  @Input()
  Type type;
}
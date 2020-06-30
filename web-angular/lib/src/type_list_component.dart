import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'type.dart';
import 'type_detail_component.dart';
import 'type_service.dart';

@Component( 
selector: 'type-list', 
templateUrl: 'type_list_component.html', 
directives: [coreDirectives, formDirectives, TypeDetailComponent], 
providers: [ClassProvider(TypeService)], 
 ) 


class TypeListComponent implements OnInit {
  List<Type> types;
  Type selectedType;
  final TypeService _typeService;

  TypeListComponent(this._typeService);

  void ngOnInit() async{
    types = await _typeService.getAll();
  }

  void  selectType(Type type){
   selectedType = type;
  }
}
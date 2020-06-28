import 'package:angular/angular.dart';


import 'backend_service.dart'; 
import 'type_list_component.dart'; 
import 'type_service.dart'; 
import 'logger_service.dart'; 

import 'user_form_component.dart';
import 'todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-user',
  templateUrl:'user_component.html',
  styleUrls: ['user_component.css'],
  
  directives: [coreDirectives,TodoListComponent,TypeListComponent,UserFormComponent],
  providers: [ 
    ClassProvider(BackendService), 
    ClassProvider(TypeService), 
    ClassProvider(Logger), 
  ], 
  
)

/*@Component(
  selector: 'my-app',
  template: '<user-form></user-form>',
  directives: [UserFormComponent],
)*/

/*@Component( 
  selector: 'my-app', 
  template: ''' 
    <type-list></type-list> 
    <sales-tax></sales-tax> 
    <user-form></user-form>
  ''', 
  directives: [TypeListComponent, SalesTaxComponent,UserFormComponent], 
  providers: [ 
    ClassProvider(BackendService), 
    ClassProvider(TypeService), 
    ClassProvider(Logger), 
  ], 
) */

class UserComponent {
  
}

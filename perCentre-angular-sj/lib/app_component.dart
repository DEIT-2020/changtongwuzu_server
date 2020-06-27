import 'package:angular/angular.dart';

import 'src/todo_list/backend_service.dart'; 
import 'src/todo_list/type_list_component.dart'; 
import 'src/todo_list/type_service.dart'; 
import 'src/todo_list/logger_service.dart'; 
import 'src/todo_list/sales_tax_component.dart'; 

import 'src/todo_list/user_form_component.dart';
import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  template:'''   <user-form></user-form>
                 <todo-list></todo-list>
                 <type-list></type-list> 
  ''',
  styleUrls: ['app_component.css'],
  
  directives: [TodoListComponent,TypeListComponent, SalesTaxComponent,UserFormComponent],
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

class AppComponent {
  
}

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
 
import 'user.dart';
 
const List<String> _genders =  [
  'Male',
  'Female',
];
 
@Component(
  selector: 'user-form',
  styleUrls: ['user_form_component.css'],
  templateUrl: 'user_form_component.html',
  directives: [coreDirectives, formDirectives],
)

class UserFormComponent {
  User model = User(1, '昵称', _genders[0], '密码');
  bool submitted = false;
 
  List<String> get genders => _genders;
 
  void onSubmit() => submitted = true;

  


Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }

  void clear() {
    model.name = '';
    model.gender = _genders[0];
    model.alterPassword = '';
  }
}

User Sj() {
  var myUser =
      User(1, 'Sj', 'Female', '123');
  print('My user is ${myUser.name}.'); // "My hero is SkyDog."
  return myUser;
}
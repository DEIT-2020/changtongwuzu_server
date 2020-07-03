import 'dart:convert';
import 'dart:core';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:http/http.dart' as http;
//import 'package:angular_dart/app_component.template.dart' as ng;
void main() {
  //runApp(ng.AppComponentNgFactory);
  var userRegister = document.querySelector("#infoSubmit")
    ..onClick.listen(register);
}

void register(Event e) async {
  //window.console.log("yes");
  // var path1= 'https://www.dartlang,org/f/portmanteaux.json';

  var ID = document.querySelector('#id');
  var name = document.querySelector('#name');
//window.alert((ID as InputElement).value);
  var password = document.querySelector('#password');
  //var password2 = document.querySelector('#Password2');

  /*if ((password1 as InputElement).value != (password2 as InputElement).value) {
    var a = (password1 as InputElement).value;
    window.alert('$a' + "两次输入不一致！");
    return;
  } else {
  
    var data = {
      'id': int.parse((ID as InputElement).value),
      'password': (password2 as InputElement).value,
      'username': (name as InputElement).value,
    };
*/
 var data = {
      'id': int.parse((ID as InputElement).value),
      'password': (password as InputElement).value,
      'name': (name as InputElement).value,
      //'gender': (gender as InputElement).value,

    };


/* await HttpRequest.request('http://127.0.0.1:8888/register',method: 'POST', mimeType:'application/json', sendData: json.encode(data)).then((HttpRequest resp) {
          print('response: ${resp.responseText}');
       });*/
 //window.alert("注册成功");
    final response = await http.post('http://127.0.0.1:8888/register/user',
        body: json.encode(data),
        headers: {"content-type": "application/json"}).then((response) {
      
      if (response.statusCode == 200) {
      window.alert("注册成功");
      } else if(response.statusCode==409){
        window.alert("name或id冲突！");
      }else window.alert("注册失败！");
   
    });
    ;
  
}




const List<String> _genders =  [
  'Male',
  'Female',
];
 
@Component(
  selector: 'user-form',
  templateUrl: 'user_form_component.html',
  directives: [coreDirectives, formDirectives],
)



  


Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }
/*
  void clear() {
    model.name = '';
    model.gender = _genders[0];
    model.password = '';
  }
*/

/*import 'dart:convert';
import 'dart:core';
import 'dart:html';
import 'package:angular/angular.dart';

Element cardList=querySelector('#cardList');
Future main() async{
  var url='http://localhost:8888/learn';
await HttpRequest.getString(url).then((String result){
    final data =json.decode(result);
    String temp='';
    for(var i=0;i<1;i++){
      temp=temp+'''
      <div class="box"><label>
                  <div class="cardcontainer">
                  <div class="back">
      ''';
      temp=temp+'<div class="word">'+data[i]['knowledge'].toString()+'</div>';
      temp=temp+'''</div> 
                  <div class="front">''';
      temp=temp+'<div class="type">'+data[i]['type']+'</div>';
      temp=temp+'<div class="title">'+data[i]['title']+'</div>';
      print(temp);
    }
    cardList.innerHtml=temp;
  }).catchError((error){
    print(error.toString());
    });
  
}
*/


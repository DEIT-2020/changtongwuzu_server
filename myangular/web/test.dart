import 'dart:convert';
import 'dart:core';
import 'dart:html';
import 'package:angular/angular.dart';

Element testList=querySelector('#testList');
Future main() async{
 /* 
  void updateBadge(Event e) { 
  querySelector('#badgeName').text = (e.target as InputElement).value;
}
void main() {
  querySelector('#inputKey').onInput.listen(updateBadge);
}*/

  var url='http://localhost:8888/test';
await HttpRequest.getString(url).then((String result){
    final data =json.decode(result);
    String biu='';
    for(var i=0;i<8;i++){
      biu=biu+'''<ul class="tests">     
                <br />''';
      biu=biu+'<span class="badge">'+'<div class="testquestion">'+'${i+1}.'+data[i]['testquestion'].toString()+'</div>'+'</span>';
      //biu=biu+'<div class="testquestion">'+data[i]['testquestion'].toString()+'</div>';
      //biu=biu+'''<p><rl>''';
      biu=biu+' <br />''<p>'+'<li>'+'<div class="optionA">'+data[i]['optionA'].toString()+'</div>'+'</li>'+'</p>'+' <br />';
      biu=biu+'<p>'+'<li>'+'<div class="optionB">'+data[i]['optionB'].toString()+'</div>'+'</li>'+'</p>'+ '<br />';
      biu=biu+'<p>'+'<li>'+'<div class="optionC">'+data[i]['optionC'].toString()+'</div>'+'</li>'+'</p>'+' <br />';
      //biu=biu+'<div class="key">'+data[i]['key'].toString()+'</div>';
      //biu=biu+''' <form #keyForm="ngForm" (ngSubmit)="onSubmit(keyForm.value)">''';
      biu=biu+'''<div class="anwser"> 
        你的回答:&nbsp;<input></input>
        </div>''';
      //biu=biu+'''<label>yourkey:&nbsp;<input [(ngModel)]="testkey"  #testkey="ngModel"></input></label>''';
      biu=biu+'</ul>';
       
      print(biu);
    }

    
               /*
        <div>
        <ul class="tests"><br />
            <li *ngFor="let test of tests">
                <br /><span class="badge">{{test.id}}&nbsp;&nbsp;{{test.testquestion}}
                </span>   
        
                <p><rl>{{test.A}}</rl></p>
                <p><rl>{{test.B}}</rl></p>
                <p><rl>{{test.C}}</rl></p>
         
                <rl><label>yourkey:&nbsp;</label>
                  <input>{{test.key1}}</rl>
            </li>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ul>*/



    testList.innerHtml=biu;
  }).catchError((error){
    print(error.toString());
    });


}



  

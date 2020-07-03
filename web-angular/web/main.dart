import 'dart:convert';
import 'dart:core';
import 'dart:html';


Element cardList=querySelector('#cardList');
Future main() async{
  var url='http://localhost:8888/learn';
await HttpRequest.getString(url).then((String result){
    final data =json.decode(result);
    String temp='';
    for(var i=0;i<9;i++){
      temp=temp+'''
      <li class="box"><label>
                  <input type="checkbox" />
                  <div class="cardcontainer">
                  
      ''';
      temp=temp+'<div class="back">'+data[i]['knowledge'].toString()+'</div>';
      temp=temp+'''
                  <div class="front">''';
      temp=temp+'<div class="type">'+data[i]['type'].toString()+'</div>';
      temp=temp+'<div class="upper">'+data[i]['title'].toString()+'</div>';
      temp=temp+'''</div>
                  </div>
                  </label>
                  </li>''';
      print(temp);
    }
    cardList.innerHtml=temp;
  }).catchError((error){
    print(error.toString());
    });
  
}
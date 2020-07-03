import 'dart:convert';
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
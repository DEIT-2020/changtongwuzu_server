import 'dart:convert';
import 'dart:core';
import 'dart:html';
import 'package:angular/angular.dart';
import 'card.dart';
import 'card_service.dart';


@Component(
  selector: 'card',
  styleUrls: ['card_component.css'],
  templateUrl: 'card_component.html',
  directives: [coreDirectives],
  providers: [ClassProvider(CardService)]
)

Element cardList=querySelector('#cardList');
var url='http://localhost:8888/learn';
Future main() async{
await HttpRequest.getString(url).then((String result){
    final data =json.decode(result);
    String temp='';
    for(var i=0;i<10;i++){
      temp=temp+'''
      <div class="box"><label>
                <input type="checkbox"/>
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
class CardComponent{
  

  /*Future getcards() async{
  var server= await HttpServer.bind('http://localhost', 8888);
  print("Serving at ${server.address}:${server.port}");
  await for (HttpRequest request in server){
    request.response
    .headers.contentType = new ContentType("text","html" ,charset: "utf-8");
    
  }
  }*/

  //http第一种尝试
   /*List<Card> cards;
  Future getcards() async {
    var url='http://localhost:8888/learn';
    var response =await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse = convert.jsonDecode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      for(var i=0;i<10;i++){
        cards[i]=jsonResponse[i];
     }
    }else{
      print('Request failed with status: ${response.statusCode}.');
    }
  }

 void ngOnInit() {}
*/

//模拟服务器
  /*final CardService _cardService;
  List<Card> cards;

  CardComponent(this._cardService);
  
  Future<void> _getCards() async {
  cards = await _cardService.getAll();
}
  void ngOnInit() => _getCards();
*/
}
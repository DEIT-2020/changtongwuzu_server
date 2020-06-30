import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'card.dart';

class CardService {
    static final _headers={'Content-Type':'application/json'};
    static const _learnUrl = 'http://127.0.0.1:8888/learn'; // URL to web API
    final Client _http;

    CardService(this._http);
   
    Future<List<Card>>getAll() async{
      try{
        final response =await _http.get(_learnUrl);
         final cards = (_extractData(response) as List)
          .map((value) => Card.fromJson(value))
          .toList();
      return cards;
      }catch(e){
        throw _handleError(e);
      }
    }
 dynamic _extractData(Response resp) => json.decode(resp.body)['data'];
  Exception _handleError(dynamic e) {
  print(e); // for demo purposes only
  return Exception('Server error; cause: $e');
}

  Future<Card> get(int cardnum) async {
    try {
      final response = await _http.get('$_learnUrl/$cardnum');
      return Card.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

}
import 'dart:async';
import 'dart:convert';
import 'dart:html';

//import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'card.dart';
import 'mock_cards.dart';

class CardService {
  Future<List<Card>> getAll() async => mockCards;
  // See the "Take it slow" appendix
  /*Future<List<Card>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }*/

/*
  static const _cardsUrl = 'http://127.0.0.1:8888/learn'; 

  final Client _http;

  CardService(this._http);

  Future<List<Card>> getAll() async {
    try {
      final response = await _http.get(_cardsUrl);
      final cards = (_extractData(response) as List)
          .map((json) => Card.fromJson(json))
          .toList();
      return cards;
    } catch (e) {
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
      final response = await _http.get('$_cardsUrl/$cardnum');
      return Card.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }
*/
}
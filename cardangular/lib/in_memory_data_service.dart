import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:http/testing.dart';

import 'scr/card/card.dart';

class InMemoryDataService extends MockClient {
  static final _initialcards = [
    {'cardnum':00001,'type':'注意点','title':'1','knowledge':'balabala'},
    {'cardnum':00001,'type':'注意点','title':'1','knowledge':'balabala'},
    {'cardnum':00001,'type':'注意点','title':'1','knowledge':'balabala'},
    {'cardnum':00004,'type':'知识点','title':'原发性痛经','knowledge':'balabala'},
    {'cardnum':00005,'type':'知识点','title':'继发性痛经','knowledge':'继发性痛经通常是由子宫内膜异位症、子宫腺肌病、子宫肌瘤、子宫内膜息肉、畸形子宫等疾病导致的'},
    {'cardnum':00006,'type':'知识点','title':'麻醉的作用','knowledge':'麻醉医生的关键作用不是让你睡着，而是让你醒来。'},
    {'cardnum':00007,'type':'应对方法','title':'11','knowledge':'blabla'},
    {'cardnum':00008,'type':'应对方法','title':'12','knowledge':'blabla'},
    {'cardnum':00009,'type':'应对方法','title':'13','knowledge':'blabla'},
  ];

   static List<Card> _cardsDb;


  static Future<Response> _handler(Request request) async {
    if (_cardsDb == null) resetDb();
    var data;
    switch (request.method) {
      case 'GET':
        final cardnum = int.tryParse(request.url.pathSegments.last);
        if (cardnum != null) {
          data = _cardsDb
              .firstWhere((card) => card.cardnum ==cardnum); // throws if no match
        } else {
          String prefix = request.url.queryParameters['cardnum'] ?? '';
          final regExp = RegExp(prefix, caseSensitive: false);
          data = _cardsDb.where((card) => card.title.contains(regExp)).toList();
        }
        break;
      default:
        throw 'Unimplemented HTTP method ${request.method}';
    }
    return Response(json.encode({'data': data}), 200,
        headers: {'content-type': 'application/json'});
  }

  static resetDb() {
    _cardsDb = _initialcards.map((json) => Card.fromJson(json)).toList();
  }

  static String lookUpName(int cardnum) =>
      _cardsDb.firstWhere((card) => card.cardnum == cardnum, orElse: null)?.title;

  InMemoryDataService() : super(_handler);
}
import 'dart:async';

import 'card.dart';
import 'mock_cards.dart';

class CardService {
  Future<List<Card>> getAll() async => mockCards;
  // See the "Take it slow" appendix
  /*Future<List<Card>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }*/
}
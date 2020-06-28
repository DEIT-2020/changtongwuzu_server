import 'package:angular/angular.dart';
import 'package:angular_app/scr/card/card.dart';
import 'package:angular_app/scr/card/card_service.dart';

class CardListComponent implements OnInit {
  final CardService _cardService;
  String errorMessage;
  List<Card> cards = [];

  CardListComponent(this._cardService);

  @override
  void ngOnInit() => _getHeroes();

  Future<void> _getHeroes() async {
    try {
      cards = await _cardService.getAll();
    } catch (e) {
      errorMessage = e.toString();
    }
  }

}
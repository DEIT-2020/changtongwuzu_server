import 'package:angular/angular.dart';
import 'package:angular_app/scr/card/card.dart';
import 'package:angular_app/scr/card/card_service.dart';
import 'scr/card/card_component.dart';
import 'scr/card/card_service.dart';
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [CardComponent,coreDirectives],
  providers: [CardService]
)
class AppComponent {
  var name = '张心怡';
  final CardService _cardService;
  List<Card> cards;
  Card selected;

  AppComponent(this._cardService);
  Future<void> _getCards() async {
  cards = await _cardService.getAll();
}
  void ngOnInit() => _getCards();
   void onSelect(Card card) => selected = card;
}
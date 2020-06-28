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

class CardComponent implements OnInit {

  final CardService _cardService;
  List<Card> cards;
  Card selected;

  CardComponent(this._cardService);
  Future<void> _getCards() async {
  cards = await _cardService.getAll();
}
  void ngOnInit() => _getCards();
  //void onSelect(Card card) => selected = card;
}
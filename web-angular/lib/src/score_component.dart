import 'package:angular/angular.dart';
import 'score_service.dart';
import 'score.dart';

@Component(
  selector: 'my-score',
  templateUrl: 'score_component.html',
  styleUrls: ['score_component.css'],
  directives: [coreDirectives],
  providers:[ClassProvider(ScoreService)],
)
/*class ScoreComponent {
  
}*/

class ScoreComponent implements OnInit{
  final ScoreService _scoreService;
  List<Score> scores;
  ScoreComponent(this._scoreService);
    Future<void>_getScores() async{
      scores = await _scoreService.getAll();
    }
  void ngOnInit()=>_getScores();
}
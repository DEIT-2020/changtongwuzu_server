import 'package:angular/angular.dart';
import 'package:web_angular/src/test.dart';
import 'package:web_angular/src/test_service.dart';
//import 'package:web_angular/src/testkey_component.dart';
//import 'score.dart';
//import 'score_component.dart';
//import 'mock_scores.dart';
//import 'score_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-test',
  styleUrls: ['test_component.css'],
  templateUrl: 'test_component.html',
  directives:[coreDirectives/*, ScoreComponent,TestKeyComponent*/],
  providers: [ClassProvider(TestService)/*,ClassProvider(ScoreService)*/],
)



class TestComponent implements OnInit {
    final TestService _testService;
    //final ScoreService _scoreService;
    List<Test> tests;
    //List<Score> scores = mockScores;
   // Test selected;
    TestComponent(this._testService/*,this._scoreService*/);
    Future<void>_getTests() async{
      tests = await _testService.getAll();
    }
    void ngOnInit()=>_getTests();



    // Score selected;
     //void onSelect(Score score) => selected = score;

  //void onSelect(Test test)=>selected = test;

  
  //final title = 'Love yourself';
  // Nothing here yet. All logic is in TodoListComponent.
}

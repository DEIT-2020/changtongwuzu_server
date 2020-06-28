import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'dart:math' show Random;

import 'package:angular/angular.dart';
import 'card.dart';

@Component(
  selector: 'card',
  styleUrls: ['card_component.css'],
  templateUrl: 'card_component.html',
  
)
class CardComponent {
  Card card1=Card(00001,'注意点','1','balabala');
  Card card2=Card(00002,'注意点','2','balabala');
  Card card3=Card(00003,'注意点','3','balabala');
  Card card4=Card(00004,'知识点','原发性痛经','balabala');
  Card card5=Card(00005,'知识点','继发性痛经','继发性痛经通常是由子宫内膜异位症、子宫腺肌病、子宫肌瘤、子宫内膜息肉、畸形子宫等疾病导致的');
  Card card6=Card(00006,'知识点','麻醉的作用','麻醉医生的关键作用不是让你睡着，而是让你醒来。');
  Card card7=Card(00007,'应对方法','11','balabala');
  Card card8=Card(00008,'应对方法','12','balabala');
  Card card9=Card(00009,'应对方法','13','balabala');
}

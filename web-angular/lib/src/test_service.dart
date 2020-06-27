import 'dart:async';

import 'test.dart';
import 'mock_tests.dart';

class TestService {
  Future<List<Test>> getAll() async => mockTests;

}
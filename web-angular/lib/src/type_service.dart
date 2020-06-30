import 'dart:async';
import 'dart:html';

import 'backend_service.dart';
import 'type.dart';
import 'logger_service.dart';

class TypeService{
  final BackendService _backendService;
  final Logger _logger;
  List<Type> types;

  TypeService(this._logger, this._backendService);

  Future<List<Type>> getAll() async {
    types = await _backendService.getAll(Type);
    _logger.log('Fetched ${types.length} types.');
    return types;
  }
}

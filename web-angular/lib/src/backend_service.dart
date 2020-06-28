import 'dart:async'; 

 
import 'type.dart'; 

 
class BackendService { 
  static final _mockTypes = [ 
    Type('痛经专区',100,50,50), 
    Type('Hpv专区',100,99,1),
    Type('乳腺健康专区',100,55,45),
    
  ]; 

 
  Future<List> getAll(type) async => type == Type 
      ? _mockTypes 
      : throw Exception('Cannot get object of this type'); 
} 

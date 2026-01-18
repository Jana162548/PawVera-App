import 'package:flutter_test/flutter_test.dart';
import 'package:pawvera/main.dart'; 

void main() {
  final logic = PawveraLogic();

  group('Pawvera Functional Requirements Tests', () {
    test('Login Logic Verification', () {
      expect(logic.validateLogin('user@pawvera.com', '123456'), true);
    });

   test('Add Pet Logic Verification', () {
      expect(logic.validateAddPet('Buddy', 'Golden Retriever'), true);
      expect(logic.validateAddPet('', ''), false);
    });
  });
}

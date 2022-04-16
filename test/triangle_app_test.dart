import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

//  Dalam TDD, penamaan umum dilakukan dengan format “should <expected result> when <condition>”.

void main() {
  group('Detect the triangle', () {
    test('Should trhow Error when there is  side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
  });
}

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

    test('Should return "Segitiga sama sisi" when all side are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
      expect(detectTriangle(1, 1, 2), isNot("Segitiga sama sisi"));
    });

    test('Should return "Segitiga Sama Kaki" when only two sides are equal', () {
      expect(detectTriangle(1, 1, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 1), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
    });

    test('Should return "Segitiga Sembarang" when no sides are equal', () {
      expect(detectTriangle(1, 2, 3), "Segitiga Sembarang");
    });
  });
}

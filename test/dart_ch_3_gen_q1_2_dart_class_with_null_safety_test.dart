import 'package:dart_ch_3_gen_q1_2_dart_class_with_null_safety/dart_ch_3_gen_q1_2_dart_class_with_null_safety.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}

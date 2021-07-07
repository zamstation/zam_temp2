import '_.imports.dart';

void main() => HeightTest().execute();

class HeightTest extends Test<double, String> {
  @override
  run(input) => Height(input / 100).toStringInCm();

  @override
  final cases = [
    NegativeTestCase(
      when: 'Negative height value',
      input: -23,
      exception: HeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Negative Border height value',
      input: -1,
      exception: HeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Zero height value',
      input: 0,
      exception: HeightNotValidException,
    ),
    ValueTestCase(
      when: 'Positive Border height value',
      then: 'outputs value in cm',
      input: 1,
      output: '1 cm',
    ),
    ValueTestCase(
      when: 'Positive height value',
      then: 'outputs value in cm',
      input: 45,
      output: '45 cm',
    ),
    ValueTestCase(
      when: 'Positive Extreme height value',
      then: 'outputs value in cm',
      input: 834,
      output: '834 cm',
    ),
  ];
}

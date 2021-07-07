import '_.imports.dart';

void main() => CalculateBmiLogicTest().execute();

class Input {
  final double weightValue;
  final double heightValue;

  const Input(this.weightValue, this.heightValue);
}

class CalculateBmiLogicTest extends Test<Input, String> {
  @override
  run(input) => CalculateBmiLogic(
        Weight(input.weightValue),
        Height(input.heightValue / 100),
      ).execute().toStringAsFixed(1);

  @override
  final cases = [
    NegativeTestCase(
      when: 'Negative weight and height value',
      input: Input(-23, -128),
      exception: WeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Negative weight value',
      input: Input(-23, 128),
      exception: WeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Negative height value',
      input: Input(72, -176),
      exception: HeightNotValidException,
    ),
    ValueTestCase(
      when: 'Positive Border weight and height value',
      then: 'outputs value',
      input: Input(1, 1),
      output: '10000.0',
    ),
    ValueTestCase(
      when: 'Positive Border weight value',
      then: 'outputs value',
      input: Input(1, 176),
      output: '0.3',
    ),
    ValueTestCase(
      when: 'Positive Border height value',
      then: 'outputs value',
      input: Input(76, 1),
      output: '760000.0',
    ),
    ValueTestCase(
      when: 'Positive weight and height value',
      then: 'outputs value',
      input: Input(76, 168),
      output: '26.9',
    ),
    ValueTestCase(
      when: 'Positive extreme weight and height value',
      then: 'outputs value',
      input: Input(1028, 4325),
      output: '0.5',
    ),
  ];
}

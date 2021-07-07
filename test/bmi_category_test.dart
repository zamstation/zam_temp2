import '_.imports.dart';

void main() {
  BmiCategoryTest().execute();
}

class Input {
  final double weightValue;
  final double heightValue;

  const Input(this.weightValue, this.heightValue);
}

class BmiCategoryTest extends Test<Input, String> {
  @override
  run(input) {
    final bmi = Bmi.fromValues(input.weightValue, input.heightValue / 100);
    return BmiCategory(bmi).toString();
  }

  @override
  final cases = [
    ValueTestCase(
      when: 'Border Weight and Height values',
      then: 'outputs Obesity',
      input: Input(1, 1),
      output: 'Obesity',
    ),
    ValueTestCase(
      when: 'Border Weight value',
      then: 'outputs Underweight',
      input: Input(1, 176),
      output: 'Underweight',
    ),
    ValueTestCase(
      when: 'Border Height value',
      then: 'outputs Obesity',
      input: Input(76, 1),
      output: 'Obesity',
    ),
    ValueTestCase(
      when: 'Weight value (42) and Height value (170)',
      then: 'outputs Underweight',
      input: Input(42, 170),
      output: 'Underweight',
    ),
    ValueTestCase(
      when: 'Weight value (56) and Height value (170)',
      then: 'outputs Normal Weight',
      input: Input(56, 170),
      output: 'Normal Weight',
    ),
    ValueTestCase(
      when: 'Weight value (78) and Height value (170)',
      then: 'outputs Overweight',
      input: Input(78, 170),
      output: 'Overweight',
    ),
    ValueTestCase(
      when: 'Weight value (90) and Height value (170)',
      then: 'outputs Obesity',
      input: Input(90, 170),
      output: 'Obesity',
    ),
  ];
}

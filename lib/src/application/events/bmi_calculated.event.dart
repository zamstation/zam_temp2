import '_.imports.dart';

@immutable
class BmiCalculated extends UseCaseSucceededEvent<Bmi> {
  final Weight minIdealWeight;
  final Weight maxIdealWeight;

  const BmiCalculated(
    Bmi data,
    this.minIdealWeight,
    this.maxIdealWeight,
  ) : super(data);
}

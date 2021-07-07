import '_.imports.dart';

class CalculateBmi extends UseCase<BmiInputProvided> {
  @override
  execute(event, bus) {
    try {
      final weight = Weight(event.weight.toDouble());
      final height = Height.inCm(event.height.toDouble());
      final bmi = Bmi(weight, height);
      final minIdealWeight = bmi.getMinIdealWeight();
      final maxIdealWeight = bmi.getMaxIdealWeight();
      return BmiCalculated(bmi, minIdealWeight, maxIdealWeight);
    } catch (exception) {
      if (exception is WeightNotValidException ||
          exception is HeightNotValidException)
        return BmiCalculateFailed(exception as Exception);
      else
        throw exception;
    }
  }
}

import '_.imports.dart';

class PrepareBmiInputFromWeight extends SavingUseCase<WeightProvided> {
  @override
  execute(event, bus) {
    final weight = event.value;
    final height = bus.selectFromStore<BmiInputProvided>().height;
    return BmiInputProvided(weight, height);
  }
}

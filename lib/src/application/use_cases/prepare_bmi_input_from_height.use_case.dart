import '_.imports.dart';

class PrepareBmiInputFromHeight extends SavingUseCase<HeightProvided> {
  @override
  execute(event, bus) {
    final weight = bus.selectFromStore<BmiInputProvided>().weight;
    final height = event.value;
    return BmiInputProvided(weight, height);
  }
}

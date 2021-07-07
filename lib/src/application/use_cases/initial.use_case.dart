import '_.imports.dart';

class InitialUseCase extends UseCase<InitialEvent> {
  @override
  execute(event, bus) {
    final bmiInputProvidedEvent =
        BmiInputProvided(event.initialWeightValue, event.initialHeightValue);
    bus.save(bmiInputProvidedEvent);
    return bmiInputProvidedEvent;
  }
}

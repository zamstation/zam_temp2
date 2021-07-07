import 'package:zam_event_bus/zam_event_bus.dart';

import 'events/initial.event.dart';
import 'use_cases/_.index.dart';

class ZamBmiCalculatorApplication extends BasicApplication {
  @override
  final eventTransformers = [
    InitialUseCase(),
    PrepareBmiInputFromWeight(),
    PrepareBmiInputFromHeight(),
    CalculateBmi(),
  ];

  ZamBmiCalculatorApplication(
    UserInterface userInterface,
    EventBus eventBus,
  ) : super(userInterface, eventBus);

  @override
  initialize() async {
    eventBus.publish(InitialEvent());
    return super.initialize();
  }
}
